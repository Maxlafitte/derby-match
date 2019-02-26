class MessagePolicy < ApplicationPolicy
  # as a user i can see all the messages i've sent and received
  def index?
    record.user == user
  end

  def show?
    true
  end

  def new?
    true
  end

  # as a user i can send a message
  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end