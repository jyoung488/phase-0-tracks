=begin
  
Define a method called encrypt that takes user input for a string
returns a string with each letter of the initial string moved forward
one letter in the alphabet, keeping spaces as they are.
  
=end

def encrypt(string)

index = 0
  while index < string.length
    unless string[index] == " " || string[index] == "z"
    string[index] = string[index].next
    end
    index += 1
  end
    if string.include? "z"
      puts string.sub!("z", "a")
    else
     puts string
     secret = string
  end
end

=begin
  
Define a method called decrypt that takes a string and returns a string
with each letter moved back one letter in the alphabet, keeping spaces as
they are
  
=end

def decrypt(secret)
alphabet = "abcdefghijklmnopqrstuvwxyz"
reverse_alpha = alphabet.reverse
index = 0

letters_array = secret.split("")
answers = []

if x = (secret.length - 1)
  for x in letters_array [0..-1]
  unless letters_array == " "
  y = reverse_alpha.index(x).next
  answers << reverse_alpha[y]
  end
end
  puts answers.join ("")
end
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))

=begin
The nested methods work because Ruby understands to run the method in the
inner-most parentheses first then runs the outer method with the value output
of the first.
=end

# Asks user if they would like to decrypt or encrypt
# Asks question and expects user input

puts "Would you like to encrypt or decrypt a password?"
password_method = gets.chomp.downcase

# Asks user for the password
# Expects user input

puts "What is the password?"
password = gets.chomp.downcase

# If password_method is encrypt, call the encrypt method using the
# password input provided

if password_method == "encrypt"
  encrypt("#{password}")

# If password_method is decrypt, call the decrypt method using the
# password input provided

elsif password_method == "decrypt"
  decrypt("#{password}")

else
  abort("You're not authorized!")

end

# Exit program

abort("Logging out for security purposes.")