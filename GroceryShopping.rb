require "csv"
csv = CSV.read("/Users/zoehenry/Desktop/CodeSail_2016/GroceryPractice.csv", headers:true)
string_csv = CSV.parse("groceries", headers:true)


puts "Here are the items and their prices:"

puts csv.first(8)

puts "What items would you like to buy? (You can only buy one of each)"

user_choices = gets.chomp.strip.downcase

list = user_choices.split(" ")

puts "How many of each?"

quantity = gets.chomp.strip

q = quantity.split(" ")

total_price = 0.0
price_csv = CSV.parse("price", headers:true)
prices_of_food = []
y = list.length

(0).upto(y) do |item|
  csv.each do |x|
    if x["groceries"] == list[item]
      prices_of_food << q[item].to_f * x["prices"].to_f
    end
  end
  item += 1
end

prices_of_food.each do |price|
  total_price += price
end

puts "Your total is $" + total_price.to_s
