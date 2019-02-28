class TeamsController < ApplicationController
  def index
    @teams = policy_scope(Team)

    if params[:start_date]
      # get start_date from the form
      booking_start_date = Date.parse params[:start_date]
      # compare it to d1 and d2 of the games (between?)

      # reject user team & reject teams from league
      # get all teams
      user_league_teams = current_user.team.league.teams
      teams = @teams.reject { |team| user_league_teams.include?(team) }
      # reject team where user_start_date is not included in games dates
      @teams = teams.reject do |team|
        team_games = team.requests.map(&:game).compact
        return false if team_games.nil?

        # raise
        team_games_dates = team_games.map(&:dates_range).flatten
        team_games_dates.include?(booking_start_date)
      end
      authorize @teams
    end
  end

  def show
    @team = Team.find(params[:id])
    @requests = @team.method_unavailable_dates
    gon.unavailable_dates = @requests
    @request = Request.new
    authorize @team
    @message = Message.new
    authorize @message
  end

  # not sure that we need it since we won't have admin users
  def new
  end

  # not sure that we need it since we won't have admin users
  def create
  end

  # not sure that we need it since we won't have admin users
  def edit
  end

  # not sure that we need it since we won't have admin users
  def update
  end

  def search
    # get start_date (and end_date) from the form
    booking_start_date = Date.parse params[:start_date]
    # compare it to d1 and d2 of the games (between?)
    # booking_start_date.between?(team.games.start_date, team.games.end_date) == false

    # get all teams
    all_teams = policy_scope(Team)
    # reject user team
    # reject teams from league
    binding.pry
    user_league_teams = current_user.team.leagues.teams
    teams = all_teams.reject { |team| user_league_teams.include?(team) }
    # reject team where user_start_date is not included in games dates
    @searched_teams = teams.reject do |team|
      team_games = team.requests.map(&:game)
      team_games_dates = team_games.map(&:dates).map(&:dates_range).flatten
      binding.pry
      team_games_dates.include?(booking_start_date)
    end

    # Game.all.each do |game|
    #   the_team = game.request.team
    #   @teams << the_team.where(booking_start_date.between?(team.request.game.start_date, team.request.game.end_date) == false)
    # end
    # autorize @teams
    # render :index
  end
end
