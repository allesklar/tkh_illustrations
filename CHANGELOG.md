# TKH Illustrations



## 0.9.6

* Removed gem dependency versions


## 0.9.5

* Fixed up the markup of a few forms.


## 0.9.4

* Added a Downloads resource for MP3 sound files and PDF documents
* Added an XXL size to image uploader connected with illustrations


## 0.9.3

* Fixed up and improved paginators


## 0.9.2

* Implemented search of illustrations in admin panel


## 0.9.1

* Various fixes and tweaks related to the upgrade
* Added alphabetical scope to illustration model


## 0.9

* Upgrading to Ruby 2.0 and Rails 4


## 0.2.4

* Un-required RMagic in main gem file. The double requirement was generating warning messages in host apps guard terminal window.


## 0.2.3

* A few changes in the es locale


## 0.2.2

* Debugging header show view
* Fixed big boo-boo in de locale file


## 0.2.1

* More translations


## 0.2

* Added admin tab navigation to header and illustration sections
* Set up many translations


## 0.1

* Added header graphic section


## 0.0.10

* Added pagination to index method.
* Added German translation strings.


## 0.0.9

* Formatted the upload form for bootstrap


## 0.0.8

* Refactored the generation of meta title and meta description
* Added German locale but translation strings are still to come


## 0.0.7

* Model translation of illustration name attribute with Globalize3
* Refactored migration generator and added a new update migration


## 0.0.6

* Refactored migration and locale generators and created an install rake task. Now it's all much more consistent with other tkh gems
* Localized the illustration model attributes


## 0.0.5

* Added authenticate_with_admin before_action in illustrations controller
* Added a switch_to_admin_layout call in all relevant illustration controller methods


## 0.0.4

* Only logged in users can access this section


## 0.0.3

* Added an install generator to copy over migration to the host app


## 0.0.2

* Fixed bug in require 'RMagick' line. Case sensitive :-(
* Locale is now part of the url instead of a param


## 0.0.1

* Carrierwave is the main gem
* Illustrations scaffold
* Image Uploader
* Interacts with tkh_admin_panel gem
