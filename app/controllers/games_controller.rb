class GamesController < ApplicationController
  def index
    @games = policy_scope(Game)
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
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
