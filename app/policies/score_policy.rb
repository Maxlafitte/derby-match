class ScorePolicy < ApplicationPolicy
  # as a user i can see one score (through a game)
  def show?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
