class FilmsController < ApplicationController

  def index
    films = Film.all
    render json: { films: films }, status: 200
  end

  def show
    film = Film.find(params[:id])
    render json: { film: film }, status: 200
  end


end
