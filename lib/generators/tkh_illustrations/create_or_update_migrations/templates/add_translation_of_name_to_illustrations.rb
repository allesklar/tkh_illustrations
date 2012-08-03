class AddTranslationOfNameToIllustrations < ActiveRecord::Migration
  def self.up
    Illustration.create_translation_table!({
          name: :string
        }, {
          :migrate_data => true
        }) 
  end
  
  def self.down
    Illustration.drop_translation_table! :migrate_data => true
  end
end
