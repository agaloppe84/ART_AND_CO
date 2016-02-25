class AddAddressToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :address, :string
  end
end
