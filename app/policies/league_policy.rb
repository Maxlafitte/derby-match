class LeaguePolicy < ApplicationPolicy
  # as a user i can see one league (through a team)
  def show?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
