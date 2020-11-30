class RemoveRewardScoreFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :reward_score, :integer
  end
end
