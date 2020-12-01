class ChangeDeliveredToAppointment < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:appointments, :delivered, nil)
  end
end
