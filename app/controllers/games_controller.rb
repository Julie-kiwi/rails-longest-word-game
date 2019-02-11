class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      letter = ('A'..'Z').to_a.sample
      @letters << letter
    end
  end

  def score
    @word = params[:word].upcase.split('')
    @letters = params[:letters]
    if include(@letters, @word)
      puts "OK"

    else
      puts "NOT OK"
    end
  end

  private

  def include(letters, word)
    word.all? { |letter| word.count(letter) <= letters.count(letter) }
  end
end
