# Address Engine #

An `Address` model for your Rails 3 apps. Fields inspired from Amazon.com:

# Installation #

Add `address_engine` to your `Gemfile`:

    gem 'address_engine'

then run the generator to create your addresses table:

    rails generate address_engine:install
    rake db:migrate

Your'e done! You now have an `Address` model with some sensible validations and fields that will go a long long way:

    create_table "addresses", :force => true do |t|
      t.string   "email"
      t.string   "firstname"
      t.string   "lastname"
      t.text     "address"
      t.string   "city"
      t.string   "state_province_region"
      t.string   "zip_postal_code"
      t.string   "country"
      t.string   "phone"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "middlename"
    end
    
Requires the `carmen` gem (https://rubygems.org/gems/carmen):

    gem install carmen

## Copyright ##

Copyright (c) 2011 Paul Campbell. See LICENSE.txt for
further details.

