# the game should take an input for a word
# hide the word into "_" for each letter

# take input of a letter from another player
# check letter against already guessed letters
# don't add to guess count if already guessed

# if letter is in the word, put the letter in appropriate place
# leave other letters as blank

# game ends if reached maximum guesses that's equal to word length
# game ends if player guesses word

require_relative 'guess-the-word'

describe Wordgame do
  let(:game) { Wordgame.new("example") }
  
end