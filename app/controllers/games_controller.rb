# frozen_string_literal: true

# Class desc
class GamesController < ApplicationController
  def new
    @letters = generate_grid(10)
  end

  def score
    @letters = params[:tags_list].chars
    @word = params[:word]
    # raise
  end

  private

  def generate_grid(grid_size)
    letters = []
    grid_size.times { letters << ('a'..'z').to_a.sample.upcase }
    letters
  end
end
