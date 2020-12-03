class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @my_appointments = current_user.appointments
    @my_current_appointments = current_user.appointments.where(delivered: nil)
    my_past_appointments = current_user.appointments.where(delivered: true).order(date: :desc)
    @my_past_appointments = 
      if params[:garden_id]
        my_past_appointments.where(garden_id: params[:garden_id])
      else
        my_past_appointments
      end
    @my_past_appointments_gardens = my_past_appointments.map(&:garden).uniq
    @my_booked_gardens = @my_appointments.map(&:garden).uniq
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
