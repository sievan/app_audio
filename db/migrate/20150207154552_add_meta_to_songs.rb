class AddMetaToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :meta, :text
  end
end
