require 'test/unit'
require './cal.rb'

class CalTest < Test::Unit::TestCase

  def test_01_ruby_cal_works_with_cal
  assert_equal(`cal 2 2012`,`ruby cal.rb 2 2012`)
  end

  def test_02_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2012)
    assert_equal(true, cal.leap_year?)
  end

    def test_02_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2013)
    assert_equal(false, cal.leap_year?)
  end

    def test_02_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2000)
    assert_equal(true, cal.leap_year?)
  end

end