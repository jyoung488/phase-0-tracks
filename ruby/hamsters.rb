puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What's the volume level from 1-10 of the hamster?"
hamster_volume = gets.to_f

puts "What's the fur color?"
hamster_color = gets.chomp

puts "Is the hamster a good candidate for adoption? Yes/No"
adoption_candidacy = gets.chomp

puts "What's the hamster's estimated age?"
estimated_age = gets.chomp

if estimated_age.empty? 
  puts "No estimated age"
else
    puts "Your hamster's estimated age is #{estimated_age}"
end

puts "Your hamster's name is #{hamster_name} and its fur color is #{hamster_color}. 
Its volume level is #{hamster_volume}."

if adoption_candidacy == "Yes"
  puts "It is a good candidate"
else
  puts "Not a good candidate"
end