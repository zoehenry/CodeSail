def fizzbuzz(num)
  if num%3 == 0 && num%5 == 0
    puts "FizzBuzz"
  elsif num%3 == 0 && num%5 != 0
    puts "Fizz"
  elsif num%3 != 0 && num%5 == 0
    puts "Buzz"
  else
    puts num
  end
end

1.upto(1000) do |x|
  fizzbuzz(x)
end

newary = Array.new
=> []
newary = Array(1..1000)
newary.each do |x|
   fizzbuzz(x)
end

newary.map do |x|
  fizzbuzz(x)
end


fbproc = Proc.new do |num|
  if num%3 == 0 && num%5 == 0
    puts "FizzBuzz"
  elsif num%3 == 0 && num%5 != 0
    puts "Fizz"
  elsif num%3 != 0 && num%5 == 0
    puts "Buzz"
  else
    puts num
  end
 end

1.upto(1000) do |x|
  fbproc.call(x)
end

 newary.map do |x|
   fbproc.call(x)
 end

 newary.each do |x|
   fbproc.call(x)
 end


 fblambda = lambda do |num|
   if num%3 == 0 && num%5 == 0
     puts "FizzBuzz"
   elsif num%3 == 0 && num%5 != 0
     puts "Fizz"
   elsif num%3 != 0 && num%5 == 0
     puts "Buzz"
   else
     puts num
   end
 end

 1.upto(1000) do |x|
   fblambda.call(x)
 end

newary.map do |x|
  fblambda.call(x)
end

newary.each do |x|
  fblambda.call(x)
 end
