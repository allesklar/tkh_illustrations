$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tkh_illustrations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tkh_illustrations"
  s.version     = TkhIllustrations::VERSION
  s.authors     = ["Swami Atma"]
  s.email       = ["swami@TenThousandHours.eu"]
  s.homepage    = "http://TenThousandHours.eu"
  s.summary     = "Rails engine for carrierwave illustrations."
  s.description = "A Rails engine fo carrierwave upload illustrations with minimum fuss."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency 'carrierwave', '~> 0.6'
  s.add_dependency "tkh_admin_panel"

  s.add_development_dependency "sqlite3"
end
