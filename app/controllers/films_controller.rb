# frozen_string_literal: true

class FilmsController < ApplicationController
  def index
    genre = Genre.find_by(name: params[:genre])
    films = if genre.present?
              genre.films.page(page).per(per_page)
            else
              Film.page(page).per(per_page)
            end
    render json: { films: films.as_json(
      only: %i[id title title_original image production_year genres]
    ), meta: pagination_dict(films) }, status: 200
  end

  def show
    film = Film.find(params[:id])
    render json: { film: film }, status: 200
  end

  private

  def page
    @page ||= params[:page] || 1
  end

  def per_page
    @per_page ||= params[:per_page] || 10
  end

  def pagination_dict(collection)
    {
      current_page: collection.current_page,
      previous_page: collection.prev_page,
      next_page: collection.next_page,
      total_pages: collection.total_pages,
      total_count: collection.total_count
    }
  end
end
