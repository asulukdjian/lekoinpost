class AddRewardScoreToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :reward_score, :integer
  end
end
