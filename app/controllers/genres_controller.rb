class GenresController < ApplicationController
  def index
    genres = Genre.all
    render json: { genres: genres }, status: 200
  end
end
