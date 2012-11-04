class CreateHeaders < ActiveRecord::Migration
  def up
    create_table :headers do |t|
      t.string :name
      t.string :photo
      t.timestamps
    end
    Header.create_translation_table!({ name: :string })
  end
  
  def down
    drop_table :headers
    Header.drop_translation_table!
  end
end
