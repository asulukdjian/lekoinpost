class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :score
      t.references :user, null: false, foreign_key: true
      t.string :garden
      t.string :references

      t.timestamps
    end
  end
end
