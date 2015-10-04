class Album < ActiveRecord::Base

  serialize :images

  validates_presence_of :name

  mount_uploaders :images, ImageUploader

  def to_param
    name ? "#{id}-#{name.to_url}" : id
  end

  scope :by_recent, -> { order('updated_at desc') }
end
