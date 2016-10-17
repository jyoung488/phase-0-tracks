class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!" * num
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    dog_age = age * 7
    p dog_age
  end

  def shake(side)
    if side == "right"
      puts "*shake right paw*"
    elsif side == "left"
      puts "*shake left paw*"
    else
      puts "*shake all over*"
    end
  end
  
  def initialize
    puts "Initializing new puppy instance ..."
  end
end

Fido = Puppy.new

Fido.fetch("ball")
Fido.speak(2)
Fido.roll_over
Fido.dog_years(7)
Fido.shake("right")