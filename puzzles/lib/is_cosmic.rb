require 'rubygems'
require 'humanize'
require 'rspec'

def isCosmic(number)
 spelled_num = number.humanize
 a = spelled_num.length
 result = number.to_s
 while a != 4
    result += " is " + a.to_s
    a = a.humanize
    a = a.length
 end
 if result == "4"
   return "4 is cosmic"
 else
   return result += " is 4 is cosmic"
 end
end
