class AddDefaultScoreToAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :score, :integer, default: 0
  end
end
