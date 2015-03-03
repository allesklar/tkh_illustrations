$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tkh_illustrations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tkh_illustrations"
  s.version     = TkhIllustrations::VERSION
  s.authors     = ["Swami Atma"]
  s.email       = ["swami@TenThousandHours.eu"]
  s.homepage    = "https://github.com/allesklar/tkh_illustrations"
  s.summary     = "Rails engine for carrierwave illustrations."
  s.description = "A Rails engine for carrierwave upload illustrations with minimum fuss."
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md", "CHANGELOG.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency 'carrierwave'
  s.add_dependency "rmagick" # for resizing in carrierwave
  s.add_dependency 'stringex' # for the to_url method in models to_param
  # s.add_dependency 'globalize3', '~> 0.3'
  s.add_dependency 'globalize'
  s.add_dependency 'will_paginate'

  s.add_development_dependency "sqlite3"
end
