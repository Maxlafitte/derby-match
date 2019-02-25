class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date :start_date
      t.date :end_date
      t.integer :score_diff
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
