#!/usr/bin/env ruby

require_relative "./test_helper"
require "ipaddr"


class HostipTest < Minitest::Test

  def setup
    @hip = Hostip.new
  end

  def test_ip
    assert_nothing_raised() do
      IPAddr.new(@hip.ip)
    end
  end

  def test_country_name
    assert_equal(@hip.country_name("66.102.13.103"), "UNITED STATES")
  end

  def test_country_abbrev
    assert_equal(@hip.country_abbrev("66.102.13.103"), "US")
  end

  def test_city
    assert_equal(@hip.city("66.102.13.103"), "Mountain View, CA")
  end

  def test_geo_location
    assert_equal(@hip.geo_location("66.102.13.103"), {"lat"=>"37.402", "long"=>"-122.078"})
  end

end
