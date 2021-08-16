class GamesController < ApplicationController
  require 'open-uri'
  require 'json'

  def new
    @letters = []
    size = 10
    size.times { @letters << ('A'..'Z').to_a.sample }
    @letters
  end

  def score
    @word = params[:word]
  end

  # def dictionary
  #   json_string = URI.open("https://wagon-dictionary.herokuapp.com/#{@answer}").read
  #   word_hash = JSON.parse(json_string)
  #   word_hash['found']
  # end

  # def score(grid, start_time, end_time)
  #   @answer = params[:word]
  #   if valid_letters?(@answer, new) && valid_word?(@answer)
  #     { time: time, score: score.negative? ? 0 : score, message: 'well done' }
  #   elsif valid_word?(attempt)
  #     { time: time, score: 0, message: 'not in the grid' }
  #   else
  #     { time: time, score: 0, message: 'not an english word' }
  #   end
  # end
end
