class DashboardsController < ApplicationController
  skip_after_action :verify_authorized
  after_action :verify_policy_scoped

  def show
    authorize :dashboard, :show?
    @requests = policy_scope(Request).where(user: current_user)
    @games = policy_scope(Game).where(user: current_user)
    @teams = policy_scope(Team)

    user_league_teams = current_user.team.league.teams
    teams = @teams.reject { |team| user_league_teams.include?(team) }

    user_ranking = current_user.team.ranking
    # array of hashes (with team_id: & ranking_difference:)
    ranking_differences = []
    teams.each do |team|
      rankings = []
      rankings << team.ranking
      rankings << user_ranking
      rankings.sort! { |a, b| b <=> a }
      difference = rankings[0] - rankings[1]
      team_result = {
                      the_team: Team.find_by_id(team.id),
                      ranking_difference: difference
                    }
      ranking_differences << team_result
    end
    # sort an array of hash by ranking_difference
    ranked_teams = ranking_differences.sort_by! { |computed_team_result| computed_team_result[:ranking_difference] }
    final_ranked_teams = []
    ranked_teams.each do |team|
      final_ranked_teams << team[:the_team]
    end
    @suggested_teams = final_ranked_teams
  end
end
