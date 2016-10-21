# GAME CLASS

class Hangman
  attr_accessor :word, :guesses, :word_progress
  attr_reader :max_guesses, :is_over

  def initialize(word)
    @word = word.downcase.split("")
    @guesses = []
    @max_guesses = 0
    @word_progress = "_" * word.length
    @is_over = false
  end

  def add_guess(letter)
    unless @guesses.include? letter
      @guesses << letter
      @max_guesses += 1
    else
      puts "You already guessed #{letter}, silly!"
    end
   
    if !@word.include? letter
      puts "To quote Trump: WRONG. You have #{@word.length - @max_guesses} chance(s) left. Guess again:"
    end
  end

  def show_progress(letter)
    @word.each_index do |index|
      if @word[index] == letter
        @word_progress[index] = letter
      end
    end
    @word_progress
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

# USER INTERFACE

require 'io/console'

puts "Player 1: Provide a word for Player 2 to guess. You won't see it typed so make sure it's right!"
word = STDIN.noecho(&:gets).chomp
new_game = Hangman.new(word)

puts "Player 2: Your word to guess is #{new_game.word.length} letters long: #{new_game.word_progress}."

while !new_game.is_over
  puts "Guess a letter --->"
  letter = gets.chomp
  
  puts new_game.show_progress(letter)
  new_game.add_guess(letter)
  new_game.game_over
end