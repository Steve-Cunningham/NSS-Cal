require 'test/unit'
require './cal.rb'

class CalTest < Test::Unit::TestCase

  # def test_01_ruby_cal_works_with_cal
  # assert_equal(`cal 2 2012`,`ruby cal.rb 2 2012`)
  # end

  def test_02_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2, 2012)
    assert_equal(true, cal.leap_year?)
  end

    def test_03_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2, 2013)
    assert_equal(false, cal.leap_year?)
  end

    def test_04_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2, 2000)
    assert_equal(true, cal.leap_year?)
  end

  def test_05_ruby_cal_works_with_cal
    cal = Calendar.new(4, 2012)
    assert_equal(cal.year, 2012)
  end

  def test_05_ruby_cal_works_with_cal
    cal = Calendar.new(4, 2012)
    assert_equal(cal.year, 2012)
  end

  def test_06_ruby_cal_gets_month_name_to_string
    cal = Calendar.new(4, 2012)
    assert_equal(cal.month_to_s, "April")
  end

  def test_06b_ruby_cal_cannot_accept_bogus_month
    cal = Calendar.new(0, 2012)
    assert_raise ArgumentError do
        cal.bogus_month
    end
  end

  # def test_06c_ruby_cal_cannot_accept_bogus_month
  #   cal = Calendar.new("jan", 1800)
  #   assert_equal(cal.month_to_s, "January")
  # end

  # def test_06d_ruby_cal_capitalization_matters
  #   cal = Calendar.new("Jan", 1800)
  #   assert_equal(cal.month_to_s, "January")
  # end

  def test_06e_ruby_cal_cannot_accept_bogus_year
    cal = Calendar.new(6, 1799)
    assert_raise ArgumentError do
        cal.bogus_year
    end
  end

  def test_07_ruby_cal_gets_year_to_string
    cal = Calendar.new(4, 2012)
    assert_equal(cal.year_to_s, "2012")
  end

  def test_07_ruby_cal_gets_month_and_year_to_header
    cal = Calendar.new(4, 2012)
    assert_equal(cal.month_year_header, "     April 2012     ")
  end

  def test_08_ruby_cal_gets_month_and_year_to_header_centered
    cal = Calendar.new(6, 2012)
    assert_equal(cal.month_year_header, "     June 2012      ")
  end

    def test_09_ruby_cal_puts_days_to_header
    cal = Calendar.new(6, 2012)
    assert_equal(cal.days_header, "Su Mo Tu We Th Fr Sa")
  end

end






