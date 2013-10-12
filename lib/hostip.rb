#!/usr/bin/env ruby

require "rubygems"
require "httparty"

class Hostip
  include HTTParty
  base_uri('api.hostip.info')
  format :xml
  
  # get country name for ip, if no ip is passed use own ip
  def country_name(ip=nil)
      self.class.request(ip)["countryName"]
  end

  # get country abbreviation for ip, if no ip is passed use own ip  
  def country_abbrev(ip=nil)
    self.class.request(ip)["countryAbbrev"]
  end
  
  # get city name for ip, if no ip is passed use own ip
  def city(ip=nil)
    self.class.request(ip)["name"]
  end
  
  # get current ip
  def ip
    self.class.request["ip"]
  end
  
  # Returns a hash with 
  # long => "xxxx" and lat => "xxx"
  # or raise exception if location is unknown
  def geo_location(ip=nil)
    begin
      # Get Comma seperated coordinates and return as hash
      coordinates = self.class.request(ip, true)["ipLocation"]["pointProperty"]["Point"]["coordinates"].split(',')
      return { "long" => coordinates[0], "lat" => coordinates[1] }
    rescue 
      raise "geo location unknown"
    end
  end
  
  class << self
    
    # Make a request and strip unwanted XML before returning result
    # options: 
    # ip => xxx.xxx.xxx.xxx
    # postion => true (Documented but does nothing!)
    def request(ip=nil, position=false)
      # construct params hash
      params = {}
      if ip != nil
        params["ip"] = ip
      end
      if position
        params["position"] = "true"
      end
      # sent request
      if params == {}
        self.get('/get_xml.php')["HostipLookupResultSet"]["featureMember"]["Hostip"]
      else
        self.get('/get_xml.php', :query => params)["HostipLookupResultSet"]["featureMember"]["Hostip"]
      end
    end
    
  end
  
end
