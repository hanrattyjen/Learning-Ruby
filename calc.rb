# hours in a year

seconds_in_minute = 60
minutes_in_hour = 60
hours_day = 24
days_year = 365
days_leap_year = days_year + 1
 
seconds_in_hour = 3600 
seconds_in_day = (seconds_in_minute * minutes_in_hour) * hours_day
puts "There are #{seconds_in_day} seconds in one day."

hours_in_year = (hours_day * days_year)
hours_in_leap_year = (hours_day * days_leap_year)

puts "There are #{hours_in_year} hours in a year, except on a leap year when there are #{hours_in_leap_year}."

# minutes in a decade

minutes_in_day = minutes_in_hour * hours_day
minutes_in_year = minutes_in_day * days_year
minutes_in_leap_year = minutes_in_day * days_leap_year

# There are about 2 or 3 leap years in a decade 

minutes_in_decade = (7 * minutes_in_year) + (3 * minutes_in_leap_year)
puts "There are #{minutes_in_decade} minutes in a decade."

# my age in seconds

# I am 33 years, 18 weeks, 5 days, 11 hours, 53 minutes old
# 12045 days, 8 days, 131 days = 12184 days
my_age = (12184 * seconds_in_day) + (11 * seconds_in_hour) + (53 * seconds_in_minute) 

puts "I am #{my_age} seconds old."

# authors age = 1160000000 seconds old
author_age_seconds = 1160000000
author_age_minutes = author_age_seconds / 60
author_age_hours = author_age_minutes / 60
author_age_days = author_age_hours / 24
author_age_years = author_age_days / 365
puts author_age_years

