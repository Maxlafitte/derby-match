class RequestsController < ApplicationController
  def index
    # @requests_sent = policy_scope(Request).where(user: current_user)
    # @requests_received = Request.all.select do |request|
    #   request.team.user == current_user
    # end
  end

  def show
    # authorize @request
  end

  def new
    # authorize @request
  end

  def create
    @team = Team.find(params[:team_id])
    authorize @team
    @request = Request.new(request_params)
    @message = Message.new(message_params)
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
    @request.save!
    @message.save!
  end

  def edit
    # authorize @request
  end

  def update
    # authorize @request
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :team_id, :user_id, :at_home)
  end

  def message_params
    params.require(:request).require(:message).permit(:content)
  end
end
