class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @team = Request.find(message_params[:request_id]).team
    @message.user = current_user
    authorize @message
    if @message.save
      # to change once we have the dashboard
      respond_to do |format|
        format.html { redirect_to team_request_path(current_user.team, current_user.team.requests.where(status: "pending").last ) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to team_request_path(current_user.team, current_user.team.requests.where(status: "pending").last ) }
        format.js
      end
    end
  end

  def index
    # @messages_sent = policy_scope(Message).where(user: current_user)
    # @messages_received = Message.all.select do |message|
        # do not uncomment this line: not sure about that one, we'll need to test it
    #   message.request.team.user == current_user
    # end
  end

  def message_params
    params.require(:message).permit(:content, :team_id, :request_id)
  end
end
