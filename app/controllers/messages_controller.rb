class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.user = current_user
    raise
    #authorize @message

    if @message.save!
      # to change once we have the dashboard
      redirect_to teams_path
    else
      render :show
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
