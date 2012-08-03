class AddTranslationOfNameToIllustrations < ActiveRecord::Migration
  def self.up
    Illustration.create_translation_table! name: :string
  end
  
  def self.down
    Illustration.drop_translation_table!
  end
end
