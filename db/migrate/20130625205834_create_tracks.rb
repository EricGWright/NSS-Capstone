class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :album
      t.string :track
      t.integer :listens

      t.timestamps
    end
  end
end
