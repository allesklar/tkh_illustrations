# TKH Illustrations



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

* Added authenticate_with_admin before_filter in illustrations controller
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
