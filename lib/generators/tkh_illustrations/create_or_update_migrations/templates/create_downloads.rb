class CreateDownloads < ActiveRecord::Migration
  def up
    create_table :downloads do |t|
      t.string :name
      t.string :thing
      t.timestamps
    end
    Download.create_translation_table!({ name: :string })
  end

  def down
    drop_table :downnloads
    Download.drop_translation_table!
  end
end
