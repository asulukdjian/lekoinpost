class AppointmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end

  def update?
    record.user == user
  end  
  
  def destroy?
    record.user == user
  end

  def accept?
    record.garden.user == user
  end

  def refuse?
    record.garden.user == user
  end

  def deliver?
    record.garden.user == user
  end

  def canceldeliver?
    deliver?
  end
end
