class AddPictureToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :picture, :string
  end
end
