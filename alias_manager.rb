# ask for spy's real name and output fake name
# swap first and last name
# change vowels to next vowel in 'aeiou'
# change consonants to next consonant

puts "What is your real name?"
full_name = gets.chomp

def name_switch(full_name)

name_array = full_name.split

new_first_name = name_array[1]
new_last_name = name_array[0]

switched_name = "#{new_first_name} " + "#{new_last_name}"
switched_name
end

vowels = "aeiou".split("")
consonants = "bcdfghjklmnpqrstvwxyz".split("")

new_name = []
index = 0

name_array.each do | letter |
  if vowels.include? letter
    x = vowels [index + 1]
    new_name << x
  else
    nil
  end
end

puts new_name.join("")