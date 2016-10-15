# define method that swaps first and last name
# downcase the input so the rest of the methods work

def swap_name(name)
    separated_name = name.split(" ")
    new_name = "#{separated_name[1]} #{separated_name[0]}"
    new_name.downcase
end

# takes each vowel and moves it over one
# returns value of new the next vowel
# create edge case for "u" to equal "a"

# define a method that moves each consonant to the next one
# define consonants as an array
# return value of next consonant
# create edge case for "z" to equal "b"

# return full name with proper capitalization

# ask for user input of name

puts "What is your name?"
name = gets.chomp

# call methods

p swap_name(name)