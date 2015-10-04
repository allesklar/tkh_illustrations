class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string  :name
      t.text    :description
      t.text    :images
      t.timestamps
    end
  end
end
