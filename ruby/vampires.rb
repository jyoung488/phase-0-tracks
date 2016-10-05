puts "How many employees will be processed?"
employee_amount = gets.to_i

count=0

while count < employee_amount

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

puts "List any allergies one by one, pressing 'Enter' after each one. Input 'Done' when you're finished."
allergies = []

until allergies.include? "done"
    allergies << gets.chomp.downcase
  end

if allergies.include? "sunshine"
  puts "Probably a vampire."

##If the employee got their age right
## and is willing to eat garlic bread or sign up for insurance
##the result is “Probably not a vampire.”

elsif age == 2016-birthyear && (garlic_bread == "Yes" || insurance == "Yes") && !(name == "Drake Cula" || name == "Tu Fang")
  puts "Probably not a vampire."

## If the employee got their age wrong
## and hates garlic bread or waives insurance
##the result is “Probably a vampire.”

elsif age != 2016-birthyear && (garlic_bread == "Yes" || insurance == "Yes") && !(name == "Drake Cula" || name == "Tu Fang") && !(name == "Drake Cula" || name == "Tu Fang")
  puts "Probably a vampire."

elsif age != 2016-birthyear && garlic_bread == "No" && insurance == "No" && !(name == "Drake Cula" || name == "Tu Fang")
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
 count += 1
end

abort("Actually never mind! What do all these questions have to do with anything? Let's all be friends.")