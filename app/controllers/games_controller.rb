class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10).join(' ')
  end

  SCORES= {
    1 => "The word can't be built out of the original grid",
    2 => "The word is valid according to the grid, but is not a valid English word",
    3 => "The word is valid according to the grid and is an English word"
  }

  def score
    raise
    @word = params[:name]
    @word.each do |letter|
      if @letters.include? letter
        @letters.delete(letter)
      end
    end
  end
end
