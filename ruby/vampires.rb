puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
birthyear = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes/No"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? Yes/No"
insurance = gets.chomp

##If the employee got their age right
## and is willing to eat garlic bread or sign up for insurance
##the result is “Probably not a vampire.”

if age == 2016-birthyear && (garlic_bread == "Yes" || insurance == "Yes")
  puts "Probably not a vampire."

## If the employee got their age wrong
## and hates garlic bread or waives insurance
##the result is “Probably a vampire.”

elsif age != 2016-birthyear && (garlic_bread == "Yes" || insurance == "Yes")
  puts "Probably a vampire."

elsif age != 2016-birthyear && garlic_bread == "No" && insurance == "No"
   puts "Almost certainly a vampire."

## If the employee got their age wrong
## hates garlic bread, and doesn’t want insurance
## the result is “Almost certainly a vampire.”


##Even if the employee is an amazing liar otherwise,
##anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire
## print “Definitely a vampire.”

elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."

##Otherwise, print “Results inconclusive.”
else
  puts "Results inconclusive."

end