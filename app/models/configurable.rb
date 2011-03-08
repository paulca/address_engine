class Address < ActiveRecord::Base
  
  validates_presence_of :firstname, :lastname
  validates_presence_of :country
  validates_format_of :phone, :with => /^[0-9\-\+ ]*$/
  validates_format_of :email, :with => /^[^@]*@.*\.[^\.]*$/, :message => 'is invalid. Please enter an address in the format of your@email_address.com'
  validates_presence_of :phone, :message => ' is required.'
  
  def country_name
    Carmen::country_name(country)
  end
  
  def order
    order_as_shipping.present? ? order_as_shipping : order_as_billing
  end
  
  def shipping_rules
    ShippingRule.for_country(country)
  end
  
  def filled_in?
    address? && country?
  end
  
  def name
    [].tap do |out|
      out << firstname if firstname.present?
      out << lastname if lastname.present?
    end.join(' ')
  end
  
  def parts
    [].tap do |out|
      out << name
      if address.present?
        address.split("\n").each do |line|
          out << line
        end
      end
      out << city if city.present?
      out << state_province_region if state_province_region.present?
      out << zip_postal_code if zip_postal_code.present?
      out << country_name if country.present?
    end
  end
  
  def readable_parts
    [].tap do |out|
      out << name

      if address.present?
        address.split("\n").each do |line|
          out << line
        end
      end
      
      last_line = []
      last_line << city if city.present?
      last_line << state_province_region if state_province_region.present?
      last_line << zip_postal_code if zip_postal_code.present?

      out << last_line.join(', ')
      out << country_name if country.present?
    end
  end
  
end