class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    def create?
      true
    end

    def show?
      create?
    end

    def edit?
      update?
    end

    def update?
      true
    end

    def destroy?
      true
    end
  end
end