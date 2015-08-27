def guess_number(number, guess, count)
  if guess < number
    puts "Your number is too low try again" if count < 4
  elsif guess > number
    puts "Your number is too high try again" if count < 4
  else
    puts "You win!"
    exit
  end
end

def play
  number = rand(1..100)
  puts number
  puts "please guess a number"

  count = 0

  while(count < 5)
    guess = gets.chomp
    guess_number(number.to_i, guess.to_i, count)
    count += 1
  end
  puts "You lose!"
end

play
