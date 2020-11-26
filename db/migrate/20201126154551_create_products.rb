class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.references :garden, null: false, foreign_key: true
      t.integer :reward_score

      t.timestamps
    end
  end
end
