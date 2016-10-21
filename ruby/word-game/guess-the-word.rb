# game class

class WordGame
  attr_accessor :word, :word_progress, :guess_count, :game_over

  def initialize(word)
    @max_guesses = word.length
    @word = word.split("")
    @word_progress = ""
    @guessed = []
    @is_over = false
  end

  def hide_word
    @word_progress = "_" * @word.length
    puts @word_progress
  end

  def match_letter(letter)
    if @guessed.include? letter
      puts "You already guessed #{letter}! Try again."
    else
      @guessed << letter
      @word.each_index do |index|
        if @word[index] == letter
          @word_progress[index] = letter
        else
          @word_progress[index] = "_"
        end
      end
    end
    puts @word_progress
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

puts "Welcome to my game! Please enter a word for your friend to guess."
word = gets.chomp
newGame = WordGame.new(word)
newGame.hide_word

puts "Enter a letter to guess the word:"
letter = gets.chomp
newGame.match_letter(letter)

    # asks for letter guesses input
      # iterate over word's letters to see if input equals any

