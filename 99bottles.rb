99.downto(1) do |x|
  if x >= 3
    puts x.to_s + " bottles of beer on the wall, " + x.to_s + " bottles of beer."
    x = x - 1
    puts "Take one down and pass it around, " + x.to_s + " bottles of beer on the wall."
  elsif x == 2
    puts "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall."
  else
    puts "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end
