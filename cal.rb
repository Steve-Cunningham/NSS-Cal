  month = ARGV[0]
  year = ARGV[1]

  # puts `cal #{month} #{year}`

class Calendar
  attr_accessor :month
  attr_accessor :year
  attr_accessor :months

  def initialize(month, year)
    @month = month
    @year = year
    @months = months
  end

  def bogus_month

    if month >12
      raise ArgumentError, "This Calendar only works with months between 1 and 12"
    elsif month <1
      raise ArgumentError, "This Calendar only works with months between 1 and 12"
    end
  end

  def month_to_s
    if month.to_i > 0
      months = ["January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"]
      month_to_s = months[month-1]
    else
    #   month.upcase!
    #   months.upcase! == caps_month
    #   month_to_s = months[month-1]
    end
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

  def days_header
    return "Su Mo Tu We Th Fr Sa"
  end

  def month_year_header
    @year = year.to_s
    header = "#{month_to_s} #{year_to_s}"
    header.center(20)
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
end