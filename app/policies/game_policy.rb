class GamePolicy < ApplicationPolicy
  # as a user i can see all the games
  def index?
    true
  end

  # as a user i can see one game
  def show?
    true
  end

  # as a user, i cannot create a game
  # a game is created automatically once a request is validated

  # as a user, i can't update a game

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
