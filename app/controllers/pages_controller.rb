class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @my_appointments = current_user.appointments
    @my_gardens = current_user.gardens
    @my_reserved_gardens = current_user.reserved_gardens
  end

  def home
  end
end
