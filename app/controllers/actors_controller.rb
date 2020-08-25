# frozen_string_literal: true

class ActorsController < ApplicationController
  def index
    actors = Actor.page(params[:page]).per(10)
    render json: { actors: actors.as_json(
      only: %i[id name]
    ), meta: pagination_dict(actors) }, status: 200
  end

  def show
    actor = Film.find(params[:id])
    render json: { film: actor }, status: 200
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
