class TeamPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true unless user.roles.where(name:"employee").exists?
  end

  def show?
    return true unless user.roles.where(name:"employee").exists?
  end

  def create?
    return true unless user.roles.where(name:"employee").exists?
  end

  def update?
    return true unless user.roles.where(name:"employee").exists?
  end

  def destroy?
    return true unless user.roles.where(name:"employee").exists?
  end
end
