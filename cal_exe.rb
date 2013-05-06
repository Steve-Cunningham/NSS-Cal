require './cal.rb'

month = ARGV[0]
year = ARGV[1]

cal = Calendar.new(month, year)

cal.print_calendar