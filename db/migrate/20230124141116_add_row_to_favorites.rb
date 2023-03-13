class AddRowToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :pokeId, :integer
  end
end
