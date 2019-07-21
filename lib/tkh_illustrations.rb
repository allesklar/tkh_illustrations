require "tkh_illustrations/version"
require 'carrierwave'
require 'carrierwave/orm/activerecord' # could not delete record without this
# require 'RMagick'
require 'stringex'
require 'globalize'
require 'will_paginate'

module TkhIllustrations
  class Engine < ::Rails::Engine
  end
end
