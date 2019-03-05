class RequestPolicy < ApplicationPolicy
  # as a user i can see all the requests i've sent and received
  def index?
    record.user == user || record.team.user == user
  end

  # as a user i can see one request i've sent or received
  def show?
    record.user == user || record.team.user == user
  end

  # as a user i can create a new request
  def new?
    true
  end

  # as a user i can create a new request
  def create?
    true
  end

  # as a user i can update a request i've received (decline/ accept) or update a request i've sent (cancel)
  def update?
    record.user == user || record.team.user == user
  end

  def accept?
    record.team.user == user
  end

  def decline?
    accept?
  end

  def cancel?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
