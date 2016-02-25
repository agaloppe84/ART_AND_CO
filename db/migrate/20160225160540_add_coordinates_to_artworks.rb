class AddCoordinatesToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :latitude, :float
    add_column :artworks, :longitude, :float
  end
end
