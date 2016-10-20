  # game class

  class WordGame
    attr_reader :guess_count
    attr_accessor :word, :word_progress

    def initialize(word)
      @guess_count = 0
      @word = word.downcase
      @word_progress = ""
      @guesses = []
    end

    def hide_word
      puts "_" * @word.length
    end

    def match(letter)
      @word.chars.each do |chr|
        if chr == letter
          @word_progress << letter
        else
          @word_progress << "_"
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

puts "Thank you! Enter letters to guess this word:"
newGame.hide_word
letter = gets.chomp
newGame.match(letter)

    # asks for letter guesses input
      # iterate over word's letters to see if input equals any

