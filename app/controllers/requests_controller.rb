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
    # authorize @request
  end

  def edit
    # authorize @request
  end

  def update
    # authorize @request
  end
end
