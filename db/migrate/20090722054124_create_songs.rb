class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
