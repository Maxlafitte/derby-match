class AddWebsiteToLeagues < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :website, :string
  end
end
