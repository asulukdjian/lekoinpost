class RemoveColumnStatusToAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :status
    add_column :appointments, :status, :string, default: "pending"
  end
end
