class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    appointment = record.appointment
    appointment.user == user || appointment.garden.user == user
  end
end
