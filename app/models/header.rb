# this is needed for now to make mass assignment security compatible with the translation of globalize3
# Globalize::ActiveRecord::Translation.class_eval do
#   attr_accessible :locale
# end

class Header < ActiveRecord::Base

  validates_presence_of :name

  translates :name

  mount_uploader :photo, PhotoUploader

  def to_param
    name ? "#{id}-#{name.to_url}" : id
  end

  scope :by_recent, -> { order('updated_at desc') }
end
