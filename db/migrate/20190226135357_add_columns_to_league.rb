class AddColumnsToLeague < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :city, :string
    add_column :leagues, :country, :string
  end
end
