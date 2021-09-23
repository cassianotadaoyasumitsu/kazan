class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true if user.roles.where(name:"admin").exists?
  end

  def show?
    return true if user.roles.where(name:"admin").exists? || user.roles.where(name:"director").exists?
  end

  def create?
    return true if user.roles.where(name:"admin").exists?
  end

  def update?
    return true if user.roles.where(name:"admin").exists?
  end

  def destroy?
    return true if user.roles.where(name:"admin").exists?
  end
end
