require 'game'

class WordsController < ApplicationController
  def game
    @grid = generate_grid(8)
  end

  def score
    @guess = params[:guess]
    @grid = params[:grid].chars
    @result = run_game(@guess, @grid, params[:start_time].to_time, Time.now)
  end
end
