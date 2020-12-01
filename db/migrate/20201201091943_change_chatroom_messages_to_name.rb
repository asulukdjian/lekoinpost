class ChangeChatroomMessagesToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :chatrooms, :messages, :name
  end
end
