puts "Hello, user. Welcome to the Russian Roulette Game!
There are size barrels to a gun with one live bullet.
You are playing against a computer, and the one who lands with the live bullet loses.
The barrel with the bullet is selected at random.

Instructions:
The user goes first.  The user may choose how many shots to take, leaving the remaining number for the computer, or to pass and let the computer choose the number of shots to take and take the remaining shots.
Examples:
If the user chooses to go first, and the user choose '1'. Then the user will take the first shot, pass the gun, and the computer will take the remaining 5 shots.
If the user chooses to pass, and the computer chooses '1'. Then the user will take the remaining five shots.

Would you like to choose or pass? (please type c or p)"

choice = gets.chomp #sees if user chooses to choose or pass
live_bullet_barrel = rand(1..6) #randomly chooses live bullet

 if choice == "c"
   puts "How many shots would you like to take?"
   shots = gets.chomp.to_i
   if shots >= live_bullet_barrel
     puts "User loses, computer wins."
   else
     puts "User wins, computer loses."
   end



elsif choice == "p"
  computer_choice = rand(1..6) #produces number of shots computer chooses
  if computer_choice <= live_bullet_barrel
    puts "User loses, computer wins."
  else
    puts "User wins, computer loses."
  end

else
  puts "Please re-run program and make sure you type c or p."
end
