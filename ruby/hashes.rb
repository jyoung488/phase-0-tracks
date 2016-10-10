# enter client details
# client name
# age
# number of children
# decor theme
# number of rooms in house
# do you want bathrooms decorated?
# favorite color


client_details = {}

puts "What is your name?"
client_details[:name] = gets.chomp

puts "How old are you?"
client_details[:age] = gets.to_i

puts "How many children do you have?"
client_details[:chilren_amount] = gets.to_i

puts "What's your preferred decor theme?"
client_details[:decor_theme] = gets.chomp

puts "How many rooms do you have in your house?"
client_details[:room_amount] = gets.to_i

puts "Do you want your bathrooms decorated?"
client_details[:bathrooms] = gets.chomp

puts "What's your favorite color?"
client_details[:favorite_color] = gets.chomp

p client_details

# ask user if any key needs to be changed
# if yes, ask for new value
# set new value to the key

puts "List any changes to your input:"
changes = gets.chomp

if changes.to_sym == :name
  puts "What's the new value?"
  new_name = gets.chomp
  client_details[:name] = new_name
else
  nil
end

p client_details

