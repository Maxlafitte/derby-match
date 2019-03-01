class UserPolicy < ApplicationPolicy
  # as a user i can see a profile
  def show?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
