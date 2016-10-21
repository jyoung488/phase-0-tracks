# hide the input word into "_" for each letter


# game ends if reached maximum guesses that's equal to word length
# game ends if player guesses word

require_relative 'hangman_game'

describe Hangman do
  let(:game) { Hangman.new("example") }
  
  it "changes word input into blank spaces" do
    expect(game.word_progress).to eq "_______"
  end

  it "word argument is separated into array of characters" do
    expect(game.word).to eq ["e", "x", "a", "m", "p", "l", "e"]
  end

  it "add to the guess counter" do
    expect { game.add_guess("x") }.to change {game.max_guesses}.from(0).to(1)
  end

  it "add incorrect guess to array" do
    expect { game.add_guess("o") }.to change {game.guesses}
  end
end