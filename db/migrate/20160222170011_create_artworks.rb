class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :genre
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
