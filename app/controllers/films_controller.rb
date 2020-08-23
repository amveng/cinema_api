class FilmsController < ApplicationController

  def index
    films = Film.all
    render json: { films: films }, status: 200
  end


end
