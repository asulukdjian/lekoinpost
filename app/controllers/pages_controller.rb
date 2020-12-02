class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @my_appointments = current_user.appointments
    @my_booked_gardens = @my_appointments.map { |app| app.garden }.uniq
    @my_gardens = current_user.gardens
    @my_reserved_gardens = current_user.reserved_gardens

    @events = current_user.appointments_for_gardens.where.not(status:[ "pending", "refused" ])
                                                    .where(delivered: [ nil, true ])
                                                    .map do |appointment|
    {
      title: appointment.user.first_name + "-" + appointment.date.strftime('%Hh'),
      start: appointment.date.strftime('%Y-%m-%d'),
      end: (appointment.date + 1.hour).strftime('%Y-%m-%d')
    }
    end
  end

  def home
  end
end
