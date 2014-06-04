class Download < ActiveRecord::Base

  validates_presence_of :name
  translates :name

  mount_uploader :thing, ThingUploader

  def to_param
    name ? "#{id}-#{name.to_url}" : id
  end

  scope :by_recent, -> { order('updated_at desc') }
  scope :alphabetically, -> { order('name') }
end
