puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What's the volume level from 1-10 of the hamster?"
hamster_volume = gets.to_i

puts "What's the fur color?"
hamster_color = gets.chomp

puts "Is the hamster a good candidate for adoption? Yes/No"
adoption_candidacy = gets.chomp

puts "What's the hamster's estimated age?"
estimated_age = gets.to_i

if estimated_age == ""
  estimated_age = nil
else estimated_age == true
end

