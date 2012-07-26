class Illustration < ActiveRecord::Base
  
  attr_accessible :image, :name
  
  validates_presence_of :name
  
  mount_uploader :image, ImageUploader
  
  def to_param
    name ? "#{id}-#{name.to_url}" : id
  end

  scope :by_recent, :order => 'updated_at desc'
end
