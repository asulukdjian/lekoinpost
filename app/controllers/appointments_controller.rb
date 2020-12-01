class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    authorize @appointment
    @garden = Garden.find(params[:garden_id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @garden = Garden.find(params[:garden_id])
    @appointment.garden = @garden
    @appointment.user = current_user
    Chatroom.create(appointment: @appointment)

    authorize @appointment
    if @appointment.save
      redirect_to dashboard_path
    else
      render :new
      flash[:notice] = "Warning, your appointment didn't go through, please review the form."
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
    authorize @appointment
  end

  def update
    @appointment = Appointment.find(params[:id])
    authorize @appointment

    if @appointment.update(appointment_params)
      redirect_to dashboard_path
    else
      render :edit
      flash[:notice] = "Warning, your appointment didn't go through, please review the form."
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    authorize @appointment
    @garden = @appointment.garden
    @appointment.user = current_user
    @appointment.destroy
    redirect_to dashboard_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :quantity, :description)
  end
end
