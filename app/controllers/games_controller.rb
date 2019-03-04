class GamesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    # @games = policy_scope(Game).where(request_id: @request)
    @team = Team.find params[:team_id]
    @games = @team.requests.accepted.map(&:game).compact
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
    @request = @game.request
    @message = Message.new(request: @request)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
