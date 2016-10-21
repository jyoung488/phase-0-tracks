# game class

class Hangman
  attr_accessor :word, :correct_guesses, :wrong_guesses, :word_progress
  attr_reader :max_guesses, :is_over

  def initialize(word)
    @word = word.downcase.split("")
    @correct_guesses = []
    @wrong_guesses = []
    @max_guesses = 0
    @word_progress = "_" * word.length
    @is_over = false
  end

  def add_guess(letter)
    if (@wrong_guesses.include? letter) || (@correct_guesses.include? letter)
      puts "You already guessed #{letter}, silly!"
    elsif @word.include? letter
      @correct_guesses << letter
      @max_guesses += 1
    else !word.include? letter
      @wrong_guesses << letter
      puts "To quote Trump: WRONG. Guess again:"
      @max_guesses += 1
    end
  end

  def show_progress(letter)
    @word.each_index do |index|
      if @word[index] == letter
        @word_progress[index] = letter
      end
    end
    @word_progress
    puts @word_progress
  end

  def game_over
    if @word_progress == @word.join("")
      puts "You guessed the word! You win!"
      @is_over = true
    elsif @max_guesses >= @word.length
      puts "You really think you can try more than #{@max_guesses} times? That's way too many, you lose!"
      @is_over = true
    else
      false
    end
  end
end

  # initialize method
    # expects argument of a word
    # outputs blank lines _ for each length of the word

  # match method
    # if letter input is in the initial word, add it to output
    # if not, output same

  # maximum guesses is the length of the word
    # count doesn't increase if letter already guessed

  # user interface
    # greets the user and asks for an input
    # initializes new instance of game with input as first word

puts "Player 1: Provide a word for Player 2 to guess."
word = gets.chomp
new_game = Hangman.new(word)

puts "Player 2: Your word to guess is #{new_game.word.length} letters long: #{new_game.word_progress}."

while !new_game.is_over
  puts "Guess a letter --->"
  letter = gets.chomp

  new_game.add_guess(letter)
  new_game.show_progress(letter)
  new_game.game_over
end

    # asks for letter guesses input
      # iterate over word's letters to see if input equals any

