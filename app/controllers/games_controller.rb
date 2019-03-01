class GamesController < ApplicationController
  def index
    @games = policy_scope(Game)
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
    @request = current_user.team.games.last.request
    @team = current_user.team
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
