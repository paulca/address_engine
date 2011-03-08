# Address Engine #

An `Address` model for your Rails 3 apps. Fields inspired from Amazon.com:

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

## Copyright ##

Copyright (c) 2011 Paul Campbell. See LICENSE.txt for
further details.

