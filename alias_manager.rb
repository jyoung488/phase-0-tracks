# ask for spy's real name and output fake name
# swap first and last name
# change vowels to next vowel in 'aeiou'
# change consonants to next consonant

def name_switch(full_name)

name_array = full_name.split

new_first_name = name_array[1]
new_last_name = name_array[0]

switched_name = "#{new_first_name} " + "#{new_last_name}"
switched_name_array = switched_name
end

def next_vowel(name_switch)
switched_name_array = name_switch.split("")
vowels = "aeiou".split("")
consonants = "bcdfghjklmnpqrstvwxyz".split("")

new_name = []
index = 0

switched_name_array.each do | letter |
  if vowels.include? letter
    x = vowels [index + 1]
    new_name << x
  elsif consonants.include? letter
    x = consonants[index + 1]
    new_name << x
  else
    nil
  end
end
end

puts "What is your real name?"
full_name = gets.chomp
puts next_vowel(name_switch(full_name))