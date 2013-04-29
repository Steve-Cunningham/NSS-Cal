  month = ARGV[0]
  year = ARGV[1]

  puts `cal #{month} #{year}`

class Calendar
  # attr_accessor :month
  attr_accessor :year


  def initialize(year)
    # @month = month
    @year = year
  end


  # def year

  # end



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