def encrypt
  
  puts "Give me a string"
  string = gets.chomp
  
index = 0
  while index < string.length
    string[index] = string[index].next
    index += 1
  end
  
  puts string
end

encrypt