class RequestsController < ApplicationController
  def index
    @requests_sent = policy_scope(Request).where(user: current_user)
    @pending_requests_sent = @requests_sent.where(status: "pending")
    @declined_requests_sent = @requests_sent.where(status: "declined")
    @accepted_requests_sent = @requests_sent.where(status: "accepted")
    @cancelled_requests_sent = @requests_sent.where(status: "cancelled")

    @requests_received = Request.all.select do |request|
      request.team.user == current_user
    end
    @pending_requests_received = @requests_received.select do |request|
      request.status == "pending"
    end
    @accepted_requests_received = @requests_received.select do |request|
      request.status == "accepted"
    end
    @declined_requests_received = @requests_received.select do |request|
      request.status == "declined"
    end
    @cancelled_requests_received = @requests_received.select do |request|
      request.status == "cancelled"
    end
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
    if params[:request][:at_home] == "0"
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
        redirect_to dashboard_path
      else
        respond_to do |format|
          format.html { render 'teams/show' }
          format.js
        end
      end
    elsif params[:commit] == "Decline"
      if @request.update(status: "declined")
        redirect_to dashboard_path
      else
        respond_to do |format|
          format.html { render 'teams/show' }
          format.js
        end
      end
    elsif params[:commit] == "Cancel"
      if @request.update(status: "cancelled")
        redirect_to dashboard_path
      else
        respond_to do |format|
          format.html { render 'teams/show' }
          format.js
        end
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
