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
    words + "!!!" + " :("
  end

  def happily(words)
    words + " yay!!!"
  end
end