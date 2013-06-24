class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :album
      t.string :age

      t.timestamps
    end
  end
end
