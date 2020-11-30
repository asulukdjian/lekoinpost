class DropScores < ActiveRecord::Migration[6.0]
  def change
    drop_table :scores
  end
end
