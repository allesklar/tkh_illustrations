class AddBodyToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :body, :text
  end
end
