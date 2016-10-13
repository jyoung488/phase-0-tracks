# ask for spy's real name and output fake name
# swap first and last name
# change vowels to next vowel in 'aeiou'
# change consonants to next consonant

alias_database = {}
name = ""

while name != "quit"

puts "What's your name? Type 'quit' to exit"
name = gets.chomp
break if name == "quit"

split_name = name.split

new_first = split_name[1].downcase.split("")
new_last = split_name[0].downcase.split("")
vowels = "aeiou".split("")
consonants = "bcdfghjklmnpqrstvwxyz".split("")

new_secret_first = []
new_secret_last = []

new_first.map! do | letter |
  if vowels.include? letter
    unless letter == "u"
    new_secret_first << vowels[(vowels.index letter).next]
    end
    if letter == "u"
    new_secret_first << "a"
    end
  elsif consonants.include? letter
    unless letter == "z"
    new_secret_first << consonants[(consonants.index letter).next]
    end
    if letter == "z"
    new_secret_first << "b"
    end
end
new_first = new_secret_first.join("")
end

new_last.map! do |letter|
    if vowels.include? letter
    unless letter == "u"
    new_secret_last << vowels[(vowels.index letter).next]
    end
    if letter == "u"
    new_secret_last << "a"
    end
  elsif consonants.include? letter
    unless letter == "z"
    new_secret_last << consonants[(consonants.index letter).next]
    end
    if letter == "z"
    new_secret_last << "b"
    end
end
new_last = new_secret_last.join("")
end

new_alias = "#{new_first} ".capitalize + "#{new_last.capitalize}"
puts new_alias

alias_database[name.to_sym] = new_alias
end

# store all names and aliases
# output all hash keys and values in a sentence

alias_database.each { |name, nickname| puts "The alias of #{name} is #{nickname}." }