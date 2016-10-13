# ask for spy's real name and output fake name
# swap first and last name
# change vowels to next vowel in 'aeiou'
# change consonants to next consonant

loop do

puts "What's your name? Type 'quit' to exit"
name = gets.chomp.split

break if name == "quit"

new_first = name[1].downcase.split("")
new_last = name[0].downcase.split("")
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

puts new_first.capitalize + " " + new_last.capitalize
end