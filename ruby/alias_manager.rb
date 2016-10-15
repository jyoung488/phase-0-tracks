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

def next_vowel(name)
    vowels = ["a", "e", "i", "o", "u"]
    name_array = []
    
    index = 0
    
    while index < name.length
    
        if name[index] == "u"
            name_array << "a"
            
        elsif vowels.include? name[index]
            x = vowels.index(name[index]) + 1
            name_array << vowels[x]
            
        else
            name_array << name[index]
        end
    index += 1
    end
    name_array.join("")
end

# define a method that moves each consonant to the next one
# define consonants as an array
# return value of next consonant
# create edge case for "z" to equal "b"

# return full name with proper capitalization

def swap_consonants(name)
    consonants = "bcdfghjklmnpqrstvwxyz"
    consonants_array = consonants.split("")
    name_array = []
    
    index = 0
    
    while index < name.length
        if name[index] == "z"
            name_array << "b"
        elsif consonants_array.include? name[index]
            x = consonants_array.index(name[index]) + 1
            name_array << consonants_array[x]
        else
            name_array << name[index]
        end
        index += 1
    end
    
    newAlias = name_array.join("")
    capitalized_alias = "#{newAlias.split[0].capitalize} #{newAlias.split[1].capitalize}"
    capitalized_alias
end

# ask for user input of name

puts "What is your name?"
name = gets.chomp

# call methods

p swap_consonants(next_vowel(swap_name(name)))