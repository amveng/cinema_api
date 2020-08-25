# frozen_string_literal: true

class FilmsController < ApplicationController
  def index 
    films = Film.page(params[:page]).per(2)
    render json: { films: films.as_json(
      only: %i[id title title_original image production_year genres]
    ), meta: pagination_dict(films) }, status: 200
  end

  def show
    film = Film.find(params[:id])
    render json: { film: film }, status: 200
  end

  private

  def pagination_dict(collection)
    {
      current_page: collection.current_page,
      previous_page: collection.prev_page,
      next_page: collection.next_page,
      total_pages: collection.total_pages
    }
  end
end
