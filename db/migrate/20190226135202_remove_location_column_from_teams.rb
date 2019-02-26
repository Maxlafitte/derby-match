class RemoveLocationColumnFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :location, :string
  end
end
