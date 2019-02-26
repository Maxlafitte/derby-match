class MessagesController < ApplicationController
  def create
    # autorize @message
  end

  def index
    # @messages_sent = policy_scope(Message).where(user: current_user)
    # @messages_received = Message.all.select do |message|
        # do not uncomment this line: not sure about that one, we'll need to test it
    #   message.request.team.user == current_user
    # end
  end
end
