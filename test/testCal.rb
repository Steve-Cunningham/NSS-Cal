require 'test/unit'

class CalTest < Test::Unit::TestCase

  def test_01_ruby_cal_works_with_cal
  assert_equal(`cal 2 2012`,`ruby cal.rb 2 2012`)
  end





end