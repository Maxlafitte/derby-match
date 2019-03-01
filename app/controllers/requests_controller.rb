class RequestsController < ApplicationController
  def index
    # @requests_sent = policy_scope(Request).where(user: current_user)
    # @requests_received = Request.all.select do |request|
    #   request.team.user == current_user
    # end
  end

  def show
    @team = Team.find(params[:team_id])
    @request = Request.find(params[:id])
    authorize @request
    @message = Message.new(request: @request)
  end

  def new
    # authorize @request
  end

  def create
    @team = Team.find(params[:team_id])
    authorize @team
    @request = Request.new(request_params)
    @message = Message.new(request_message_params)
    @message.request = @request
    @message.user = current_user
    @request.team = @team
    @request.user = current_user
    @request.status = "pending"
    if params[:at_home] == 0
      @request.at_home = true
    else
      @request.at_home = false
    end
    @request.save
    @message.save
    redirect_to dashboard_path
  end

  def edit
    # authorize @request
  end

  def update
    @request = Request.find(params[:id])
    authorize @request
    if params[:commit] == "Accept"
      if @request.update(status: "accepted")
        @game = Game.new
        @game.request = @request
        @game.start_date = @request.start_date
        @game.end_date = @request.end_date
        @game.save!
        #change once we have the dashboard
        redirect_to teams_path
      else
        render :my_bookings
      end
    elsif params[:commit] == "Decline"
      if @request.update(status: "declined")
        #change once we have the dashboard
        redirect_to teams_path
      else
        render :my_bookings
      end
    elsif params[:commit] == "Cancel"
      if @request.update(status: "cancelled")
        #change once we have the dashboard
        redirect_to teams_path
      else
        render :show
      end
    end
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :team_id, :user_id, :at_home)
  end

  def request_message_params
    params.require(:request).require(:message).permit(:content)
  end
end
