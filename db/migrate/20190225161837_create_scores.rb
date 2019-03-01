class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.boolean :at_home
      t.integer :value
      t.references :game, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
