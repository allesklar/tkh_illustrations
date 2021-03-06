class Illustration < ActiveRecord::Base

  has_many :product_images, :dependent => :destroy
  has_many :products, :through => :product_images

  validates_presence_of :name

  translates :name

  mount_uploader :image, ImageUploader

  def to_param
    name ? "#{id}-#{name.to_url}" : id
  end

  scope :by_recent, -> { order('updated_at desc') }
  scope :alphabetically, -> { order('name') }
end
