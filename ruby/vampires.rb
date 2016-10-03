puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes/No"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? Yes/No"
insurance = gets.chomp

current_year = 2016

if (age = current_year - year.to_i) && (garlic_bread == "Yes") && (insurance == "Yes")
  puts "Probably not a vampire."

elsif (insurance == "No") || [(age <=> current_year - year.to_i) && (garlic_bread == "No")]
  puts "Probably a vampire."

elsif (insurance == "No") && (age <=> current_year - year.to_i) && (garlic_bread == "No")
  puts "Almost certainly a vampire."
end  
