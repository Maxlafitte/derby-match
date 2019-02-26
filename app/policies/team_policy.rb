class TeamPolicy < ApplicationPolicy
  # as a user i can see all the teams
  def index?
    true
  end

  # necessary to create a request form
  def create?
    true
  end

  # as a user i can see one team
  def show?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
