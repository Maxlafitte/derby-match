class TeamsController < ApplicationController
  def index
    @teams = policy_scope(Team)
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
    @teams = Team.all
    authorize @teams
    render :index
  end
end
