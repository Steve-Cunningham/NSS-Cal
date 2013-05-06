require 'test/unit'
require './cal.rb'

class CalTest < Test::Unit::TestCase

  def test_02_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2, 2012)
    assert_equal(true, cal.leap_year?)
  end

  def test_02b_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new("Feb", 2012)
    assert_equal(true, cal.leap_year?)
  end

    def test_03_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2, 2013)
    assert_equal(false, cal.leap_year?)
  end

      def test_03b_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new("feb", 2013)
    assert_equal(false, cal.leap_year?)
  end

    def test_03c_ruby_cal_can_find_if_it_is_leap_year
    cal = Calendar.new(2, 2000)
    assert_equal(true, cal.leap_year?)
  end

  def test_04_ruby_cal_works_with_cal
    cal = Calendar.new(4, 2012)
    assert_equal(2012, cal.year)
  end

  def test_04b_ruby_cal_works_with_cal
    cal = Calendar.new("Dec", 2012)
    assert_equal(2012, cal.year)
  end

  def test_05_ruby_cal_gets_month_name_to_string
    cal = Calendar.new(4, 2012)
    assert_equal("April", cal.month_to_s)
  end

  def test_05b_ruby_cal_cannot_accept_bogus_month
    cal = Calendar.new(0, 2012)
    assert_raise ArgumentError do
        cal.bogus_month
    end
  end

  def test_05c_ruby_cal_cannot_accept_bogus_month
    cal = Calendar.new("jan", 1800)
    assert_equal("January", cal.month_to_s)
  end

  def test_05d_ruby_cal_capitalization_doesnt_matter
    cal = Calendar.new("Jan", 1800)
    assert_equal( "January", cal.month_to_s)
  end

  def test_05e_ruby_cal_only_first_three_of_month_matter
    cal = Calendar.new("decJayMcDowell", 1800)
    assert_equal("December", cal.month_to_s)
  end

  def test_05f_ruby_cal_only_first_three_of_month_matter
    cal = Calendar.new("febhhhh", 1800)
    assert_equal( "February", cal.month_to_s)
  end

  def test_05g_ruby_cal_cannot_accept_bogus_year
    cal = Calendar.new(6, 1799)
    assert_raise ArgumentError do
        cal.bogus_year
    end
  end

  def test_05h_ruby_cal_convert_from_s_works_with_string
    cal = Calendar.new("feb", 1800)
    assert_equal(2, cal.convert_from_s)
  end

  def test_05i_ruby_cal_convert_from_s_works_with_number
    cal = Calendar.new(2, 1800)
    assert_equal(2, cal.convert_from_s)
  end

  def test_05j_ruby_cal_convert_from_s_works_with_number
    cal = Calendar.new(12, 1800)
    assert_equal(12, cal.convert_from_s)
  end

  def test_06_ruby_cal_gets_year_to_string
    cal = Calendar.new(4, 2012)
    assert_equal("2012", cal.year_to_s)
  end

  def test_07_ruby_cal_gets_month_and_year_to_header
    cal = Calendar.new(4, 2012)
    assert_equal("     April 2012", cal.month_year_header)
  end

  def test_07_ruby_cal_gets_month_and_year_to_header
    cal = Calendar.new("Apr", 2012)
    assert_equal("     April 2012", cal.month_year_header)
  end

  def test_08_ruby_cal_gets_month_and_year_to_header_centered
    cal = Calendar.new(5, 2013)
    assert_equal("      May 2013", cal.month_year_header)
  end

  def test_08b_ruby_cal_gets_month_and_year_to_header_centered
    cal = Calendar.new("jun", 1969)
    assert_equal("     June 1969", cal.month_year_header)
  end

  def test_09_ruby_cal_Check_Zeller_day_of_week
    cal = Calendar.new(5, 2013)
    assert_equal(4, cal.zellers_congruence)
  end

  def test_09b_ruby_cal_Check_Zeller_day_of_week
    cal = Calendar.new("Feb", 2013)
    assert_equal(6, cal.zellers_congruence)
  end

  def test_10_ruby_cal_Check_Month_Length
    cal = Calendar.new(2, 2013)
    assert_equal(28, cal.month_length)
  end

  def test_10b_ruby_cal_Check_Month_Length
    cal = Calendar.new(2, 2012)
    assert_equal(29, cal.month_length)
  end

  def test_10c_ruby_cal_Check_Month_Length
    cal = Calendar.new("July", 2013)
    assert_equal(31, cal.month_length)
  end

  def test_10d_ruby_cal_Check_Month_Length
    cal = Calendar.new("dec", 2012)
    assert_equal(31, cal.month_length)
  end

  # def test_11_ruby_cal_Check_Body
  #   cal = Calendar.new(5, 2013)
  #   assert_equal("         ", cal.body)
  # end

end






