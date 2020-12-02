class AddScoreToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :score, :integer
  end
end
