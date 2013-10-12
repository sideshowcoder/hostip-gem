require_relative "./test_helper"

class HostipiBinTest < Minitest::Test

	def setup
		@hostipbin = File.expand_path("../bin/hostip", File.dirname(__FILE__))
	end

	def test_get_ip
	  assert IPAddr.new(%x[ruby #{@hostipbin}].chomp)
	end

	def test_city
		city = %x[ruby #{@hostipbin} --city 74.125.77.147].chomp
		assert_equal "Mountain View, CA", city
	end

  def test_multiple
    mult = %x[ruby #{@hostipbin} --geo --city --country 66.102.13.103].chomp
    exp_res = "Mountain View, CA\n37.402 -122.078\nUNITED STATES"
    assert_equal exp_res, mult
  end

  def test_country
    country = %x[ruby #{@hostipbin} --country 74.125.77.147].chomp
    assert_equal "UNITED STATES", country
  end

  def test_country_abbrev
    abbrev = %x[ruby #{@hostipbin} --country-abbrev 74.125.77.147].chomp
    assert_equal "US", abbrev
  end

  def test_geo_location
    geo = %x[ruby #{@hostipbin} --geo 74.125.77.147].chomp
    assert_equal "37.402 -122.078", geo
  end

end

