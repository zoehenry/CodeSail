# Zoe Henry
# Week 2: Homework: Choose Your Adventure
# each decision branches off for a different set of possible decisions, each
# journey has three possible choice then the story ends.


def output_border
  puts "=" * 30
  puts " "
end

output_border
puts "WELCOME TO YOUR NEW ADVENTURE!"
output_border

puts "WHAT'S YOUR NAME?"
user_name = gets.chomp.strip.upcase

output_border
puts "WELCOME, " + user_name + "!"

output_border
puts "WHAT WOULD YOU LIKE TO DO?"
puts "
Build a sandcastle (b) \n
Sail a ship (s) \n
"

user_decision = gets.chomp.strip.downcase

output_border
if user_decision == "b"
  puts "WHAT AN AMAZING CASTLE!"

  output_border
  puts "WHAT WOULD YOU LIKE TO DO?"
  puts "
  Explore the castle (e) \n
  Lay on the beach (l)\n
  "
  user_decision = gets.chomp.strip.downcase

  output_border
  if user_decision == "e"
    puts "YOU HAVE ENCOUNTERED A DRAGON!"

    output_border
    puts "WHAT WOULD YOU LIKE TO DO?"
    puts "
    Fight the dragon (f) \n
    Befriend the dragon (b) \n
    "
    user_decision = gets.chomp.strip.downcase

    output_border
    if user_decision == "f"
      puts "THE DRAGON IS SLAIN AND YOU SAVED THE DAY! GOOD JOB."

    elsif user_decision == "b"
      puts "YOU ARE NOW BEST FRIENDS WITH THE DRAGON AND YOU CAN FLY AROUND ON ITS BACK. AWESOME!"
    # else
    #   puts "YOU DIDN'T CHOOSE ANYTHING. YOU DIED. x("
    end

  elsif user_decision == "l"
    puts "YOU NOW FEEL VERY RELAXED."

    output_border
    puts "WHAT WOULD YOU LIKE TO DO?"
    puts "
    Go for a swim (s) \n
    Get some food (g)\n
    "
    user_decision = gets.chomp.strip.downcase

    output_border
    if user_decision == "s"
      puts "YOU SWAM WITH SOME DOLPHINS!"

    elsif user_decision == "g"
      puts "YOU HAD AMAZING SANDWICH AND SMOOTHIE!"

    else
      puts "YOU DIDN'T CHOOSE ANYTHING. YOU DIED. x("

    end
  else
    puts "YOU DIDN'T CHOOSE ANYTHING. YOU DIED. x("

  end


elsif user_decision == "s"
  puts "YOU HAVE SAILED TO A COOL ISLAND!"
  output_border
  puts "WHAT WOULD YOU LIKE TO DO?"
  puts "
  Make a fort (f) \n
  Eat a coconut (c) \n
  "
  user_decision = gets.chomp.strip.downcase

  output_border
  if user_decision == "f"
    puts "YOU MADE A COOL FORT!"

    output_border
    puts "WHAT WOULD YOU LIKE TO DO?"
    puts "
    Hangout  in your new fort (h) \n
    Return home (r) \n
    "
    user_decision = gets.chomp.strip.downcase

    output_border
    if user_decision == "h"
      puts "YOUR FORT IS VERY COOL! YOU ARE PLANNING ON STAYING ON THE ISLAND FOR A WHILE."
    elsif user_decision == "r"
      puts "YOU MADE IT HOME! YOUR FRIENDS AND FAMILY ARE GLAD YOU'RE BACK!"
    else
      puts "YOU DIDN'T CHOOSE ANYTHING. YOU DIED. x("
    end

  elsif user_decision == "c"
    puts "COCONUT WATER IS AMAZING AND HAS LOTS OF HEALTH BENEFITS!"

    output_border
    puts "WHAT WOULD YOU LIKE TO DO?"
    puts "
    Make a coconut bra with the remains (m) \n
    Go fishing (g) \n
    "
    user_decision = gets.chomp.strip.downcase

    output_border
    if user_decision == "m"
      puts "LOOKING GOOD ;)"
    elsif user_decision == "g"
      puts "YOU CAUGHT A HUGE FISH! YOU HAVE ENOUGH FOOD FOR DAYS!"
    else
      puts "YOU DIDN'T CHOOSE ANYTHING. YOU DIED. x("
    end
  else
    puts "YOU DIDN'T CHOOSE ANYTHING. YOU DIED. x("
  end
end
puts "THE END!"
