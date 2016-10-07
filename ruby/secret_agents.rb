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