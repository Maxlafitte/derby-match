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
    # get start_date (and end_date) from the form
    booking_start_date = params[:start_date]
    # compare it to d1 and d2 of the games (between?)
    @teams = Team.where(booking_start_date.between?(team.games.start_date, team.games.end_date) == false)

    render :index
  end
end
