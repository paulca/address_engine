class CreateAddresses < ActiveRecord::Migration
  def self.up
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
  end

  def self.down
    drop_table :addresses
  end
end