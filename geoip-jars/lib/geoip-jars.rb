# encoding: utf-8

require 'java'

Dir["#{File.expand_path('..', __FILE__)}/*.jar"].each { |jar| require(jar) }


class Java::ComMaxmindGeoip::Location
  HASH_FIELDS = {
    :country_code => :countryCode, 
    :country_name => :countryName, 
    :region_code  => :region,
    :region_name  => :region_name, 
    :city         => :city, 
    :postal_code  => :postalCode, 
    :latitude     => :latitude, 
    :longitude    => :longitude, 
    :dma_code     => :dma_code, 
    :area_code    => :area_code, 
    :metro_code   => :metro_code,
    :time_zone    => :time_zone
  }
  
  def region_name
    @region_name ||= Java::ComMaxmindGeoip::regionName.region_name_by_code(countryCode, region)
  end
    
  
  def time_zone
    @time_zone ||= Java::ComMaxmindGeoip::timeZone.time_zone_by_country_and_region(countryCode, region)
  end
  
  def to_h
    @h ||= begin
      HASH_FIELDS.reduce({}) do |acc, (hash_field, java_field)|
        acc[hash_field] = self.send(java_field)
        acc
      end
    end
  end
end