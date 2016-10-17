class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    p "Woof!" * num
  end

end

Fido = Puppy.new

Fido.fetch("ball")
Fido.speak(2)