class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist
      t.integer :listeners

      t.timestamps
    end
  end
end
