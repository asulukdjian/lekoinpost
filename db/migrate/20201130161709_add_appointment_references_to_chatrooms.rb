class AddAppointmentReferencesToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :appointment, null: false, foreign_key: true
  end
end
