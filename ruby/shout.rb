=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "!!" + words + " yay!!!"
  end
end

puts Shout.yell_angrily("Hey")
puts Shout.yelling_happily("I can't wait")
=end

module Shout
  def angrily(words)
    puts words + "!!!" + " :("
  end

  def happily(words)
    puts words + " yay!!!"
  end
end

class Friend
  include Shout
end

class Tea_Kettle
  include Shout
end

oldFriend = Friend.new
oldFriend.happily("So good to see you")
oldFriend.angrily("Where have you been?")

TeaKettle = Tea_Kettle.new
TeaKettle.angrily("I'm finished boiling")
TeaKettle.happily("I'm full of water")