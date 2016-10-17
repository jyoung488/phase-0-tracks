class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}!"
  end

  def initialize
    puts "Initializing Santa instance ..."
  end
end

Santa1 = Santa.new

Santa1.speak
Santa1.eat_milk_and_cookies("gingerbread")