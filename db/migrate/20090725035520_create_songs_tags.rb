class CreateSongsTags < ActiveRecord::Migration
  def self.up
    create_table :songs_tags, :id => false do |t|
      t.references :song
      t.references :tag

      t.timestamps
    end
  end

  def self.down
    drop_table :songs_tags
  end
end
