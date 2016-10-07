=begin
  
Define a method called encrypt that takes user input for a string
returns a string with each letter of the initial string moved forward
one letter in the alphabet, keeping spaces as they are.
  
=end

def encrypt
  
  puts "Give me a string"
  string = gets.chomp

index = 0
  while index < string.length
    unless string[index] == " "
    string[index] = string[index].next
    end
    index += 1
  end
  
  puts string
end

encrypt

=begin
  
Define a method called decrypt that takes a string and returns a string
with each letter moved back one letter in the alphabet, keeping spaces as
they are
  
=end

