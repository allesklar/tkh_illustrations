# TKH Illustrations

This is a Rails engine with customizes file uploading via the carrierwave gem.

Primarily developed for Ten Thousand Hours but we are happy to share if anybody finds it useful.

It's still in its infancy. Many improvements to come.

## Installation

Add this line to your application's Gemfile:

    gem 'tkh_illustrations', '~> 0.0'

And then execute:

    $ bundle

Import migration

		$ rails g tkh_illustrations:install

Run the migration

		$ rake db:migrate

And then of course restart your server! Typically:

		$ rails s


## Pre-requisites


The following things are needed:

* an admin layout - optional use of the tkh_admin_panel gem
* the imagemagick library must be installed on your dev machine and production server
* current_user and authenticate methods should be provided by your authentication system. You can use the tkh_authentication gem to that effect

That's all


## Usage


The section is located at:

    $ /illustrations

... and it should work out of the box


## Contributing

Pull requests for new features and bug fixes are welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Create your failing tests based on the Test Unit framework.
4. Create your code which makes the tests pass.
5. Commit your changes (`git commit -am 'Added some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request
