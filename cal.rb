
  # puts `cal #{month} #{year}`

class Calendar
  attr_accessor :month
  attr_accessor :year
  attr_accessor :h
  attr_reader :MONTHS
  attr_reader :month_abbre
  attr_reader :remonth
  attr_reader :space


  MONTHS = %w(January February March April May June July August September October November December)

  def initialize(month, year)
    @month = month
    @year = year
    @h = h
    @month_abbre = month_abbre
    @remonth = remonth
    @space = space
  end

  def bogus_month
    if month >12
      raise ArgumentError, "This Calendar only works with months between 1 and 12"
    elsif month <1
      raise ArgumentError, "This Calendar only works with months between 1 and 12"
    end
  end

  def convert_from_s
    # check out .include? (month.upcase[0,3]) on the MONTHS Constant
    if month.is_a? (String)
      case month.upcase[0,3]
      when "JAN"
        remonth = 1
      when "FEB"
        remonth = 2
      when "MAR"
        remonth = 3
      when "APR"
        remonth = 4
      when "MAY"
        remonth = 5
      when "JUN"
        remonth = 6
      when "JUL"
        remonth = 7
      when "AUG"
        remonth = 8
      when "SEP"
        remonth = 9
      when "OCT"
        remonth = 10
      when "NOV"
        remonth = 11
      when "DEC"
        remonth = 12
      end
      remonth.to_i
    else
      case month.to_s
      when "1"
        month = 1
      when "2"
        month = 2
      when "3"
        month = 3
      when "4"
        month = 4
      when "5"
        month = 5
      when "6"
        month = 6
      when "7"
        month = 7
      when "8"
        month = 8
      when "9"
        month = 9
      when "10"
        month = 10
      when "11"
        month = 11
      when "12"
        month = 12
      end
      month.to_i
    end
  end

  def month_to_s
      MONTHS[convert_from_s.to_i - 1]
  end

  def bogus_year
    if year <1800
      raise ArgumentError, "This Calendar only works between 1800 and 3000"
    elsif year >3000
      raise ArgumentError, "This Calendar only works between 1800 and 3000"
    end
  end

  def year_to_s
    @year = year.to_s
  end

  def month_year_header
    @year = year.to_s
    header = "#{month_to_s} #{year_to_s}"
    header.center(20).rstrip
  end

  def zellers_congruence
    if convert_from_s.to_i < 3
      m = (convert_from_s.to_i + 12)
      y = (year.to_i - 1)
    else m = convert_from_s.to_i
         y = year.to_i
    end
         h = (1 + (m + 1)*26 / 10 + y+ y/4 +6*(y/100) + y/400) % 7
  end

  def month_length
    convert_from_s = month.nil? ? @month_counter : month
    months_31 = ["January", "March", "May", "July", "August", "October", "December"]
    months_30 = ["April", "June", "September", "November"]
    if months_31.include? month_to_s
      31
    elsif months_30.include? month_to_s
      30
    else
      if year % 4 != 0 or year % 100 === 0 && year % 400 != 0
        28
      else
        29
      end
    end
  end

  def leap_year?
    if year % 400 == 0
       true
    elsif year % 4 == 0
        true
    elsif year % 100 == 0
        false
    else
       false
    end
  end

  def zeller
    if zellers_congruence == 0
      6
    else
      zellers_congruence.to_i - 1
    end
  end

  def format_calendar

  days = (1..month_length).to_a
    1.upto(zeller) do
      days.unshift("  ")
    end
    days.collect! {|d| d.to_s.rjust(2)}
    days.each_slice(7) {|d| p d}
    days.join(" ")
    days.flatten(7)
  end


  def body
    if zellers_congruence > 0
      space = "   "
      x = zellers_congruence
      z = space * (x)
      puts z
      "                  "
    end
  end

  def print_calendar
    puts month_year_header
    #puts "\n"
    puts "Su Mo Tu We Th Fr Sa"
    format_calendar
  end



end