class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"  --- that was the suggested one
    "system/images/#{model.class.to_s.underscore}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :scale => [50, 50]
  # end
  # version :thumbnail do
  #   process :resize_to_limit => [125, 125]
  # end
  version(:thumbnail) { process :resize_to_limit => [125, 125] }
  version(:small) { process :resize_to_limit => [225, 225] }
  version(:medium) { process :resize_to_limit => [350, 350] }
  version(:large) { process :resize_to_limit => [500, 500] }
  version(:xl) { process :resize_to_limit => [750, 750] }
  version(:xxl) { process :resize_to_limit => [900, 900] }
  # used in Event model (tkh_event) for event itself and social sharing.
  # Facebook recommends 1200 wide minimum
  # Also used in Page model of tkh_content
  version(:giant) { process :resize_to_limit => [1200, 1200] }

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  # got this from http://stackoverflow.com/questions/9561641/carrierwave-temp-directory-set-to-uploads-tmp-folder
  # without this all tmp files would go to /public/uploads/tmp which is not cool at all.
  def cache_dir
    # should return path to cache dir
    Rails.root.join 'tmp/uploads'
  end

end
