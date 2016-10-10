# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#"iNvEsTiGaTiOn".<???>
p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, "o")
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
p "the usual".insert(-1, " suspects")
p "the usual" << " suspects"
#=> "the usual suspects"

# " suspects".<???>
p " suspects".insert(0, "the usual")
p " suspects".prepend("the usual")
p " suspects".rjust(18, "the usual")
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
p "The mystery of the missing first letter".delete "T"
p "The mystery of the missing first letter".slice(1, 39)
p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
p "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

# "z".<???>
p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
p "How many times does the letter 'a' appear in this string?".count "a"
# => 4