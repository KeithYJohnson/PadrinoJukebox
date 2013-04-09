class CreateTracks < ActiveRecord::Migration
  def self.up
    create_table :tracks do |t|
      t.string :title
      t.string :track_url
      t.integer :soundcloud_id
      t.string :permalink_url
      t.string :artwork_url
      t.string :description
      t.integer :duration
      t.string :genre
      t.integer :bpm
      t.integer :comment_count
      t.integer :download_count
      t.integer :favouritings_count
      t.timestamps
    end
  end

  def self.down
    drop_table :tracks
  end
end
