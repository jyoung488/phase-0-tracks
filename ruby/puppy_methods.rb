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
end

Fido = Puppy.new

Fido.fetch("ball")
Fido.speak(2)
Fido.roll_over