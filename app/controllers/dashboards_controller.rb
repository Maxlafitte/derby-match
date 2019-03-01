class DashboardsController < ApplicationController
  skip_after_action :verify_authorized
  after_action :verify_policy_scoped

  def show
    authorize :dashboard, :show?
    @team = current_user.team
    @requests = policy_scope(Request).where(user: current_user)
    @games = policy_scope(Game).where(user: current_user)
    @teams = policy_scope(Team)
  end
end
