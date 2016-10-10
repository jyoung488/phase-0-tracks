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
client_details[:children_amount] = gets.to_i

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
# change input into symbol of hash
# if yes, ask for new value
# set new value to the key

puts "List any changes to your input:"
changes = gets.chomp

if changes.to_sym == :name
  puts "What's the new name?"
  new_name = gets.chomp
  client_details[:name] = new_name

elsif changes.to_sym == :age
  puts "What's the new age?"
  new_age = gets.to_i
  client_details[:age] = new_age

elsif changes.to_sym == :children_amount
  puts "How many children?"
  new_children_amount = gets.to_i
  client_details[:children_amount] = new_children_amount

elsif changes.to_sym == :decor_theme
  puts "What's the new decor theme?"
  new_decor_theme = gets.chomp
  client_details[:decor_theme] = new_decor_theme

elsif changes.to_sym == :room_amount
  puts "What's the correct number of rooms?"
  new_room_amount = gets.to_i
  client_details[:room_amount] = new_room_amount

elsif changes.to_sym == :bathrooms
  puts "Do you want the bathroom decorated?"
  new_bathrooms = gets.chomp
  client_details[:bathrooms] = new_bathrooms

elsif changes.to_sym == :favorite_color
  puts "What's the new favorite color?"
  new_favorite_color = gets.chomp
  client_details[:favorite_color] = new_favorite_color  

elsif changes.downcase == "none"
  nil
 
else
  nil
end

# print latest hash
# exit

p client_details
exit