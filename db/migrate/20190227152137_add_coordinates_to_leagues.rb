class AddCoordinatesToLeagues < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :latitude, :float
    add_column :leagues, :longitude, :float
  end
end
