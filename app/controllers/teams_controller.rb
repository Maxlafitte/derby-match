class TeamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teams = policy_scope(Team)
  end

  def show
    @team = Team.find(params[:id])
    authorize @team
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
end
