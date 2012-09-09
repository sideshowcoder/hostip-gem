#!/usr/bin/env ruby

require "test_helper"
require "test/unit"
require "hostip"
require "ipaddr"


class HostipiBinTest < Test::Unit::TestCase

	def setup 
		@hostipbin = "../bin/hostip"		
	end

	def test_get_ip
		assert_nothing_raised() do
			 IPAddr.new(%x[ruby ../bin/hostip].chomp)	
		end
	end

	def test_city
		city = %x[ruby ../bin/hostip --city 74.125.77.147].chomp
		assert_equal(city, "Buren")
	end

	def test_multiple
		mult = %x[ruby ../bin/hostip --geo --city --country 74.125.77.147].chomp
		exp_res = "Buren\n51.9167 5.3333\nNETHERLANDS"
		assert_equal(mult, exp_res)		
	end

	def test_country
		country = %x[ruby ../bin/hostip --country 74.125.77.147].chomp
		assert_equal(country, "NETHERLANDS")
	end

	def test_country_abbrev
		abbrev = %x[ruby ../bin/hostip --country-abbrev 74.125.77.147].chomp
		assert_equal(abbrev, "NL")
	end

	def test_geo_location
		geo = %x[ruby ../bin/hostip --geo 74.125.77.147].chomp
		assert_equal(geo, "51.9167 5.3333")
	end

end

