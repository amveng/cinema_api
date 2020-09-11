# frozen_string_literal: true

class ActorsController < ApplicationController
  def index
    actors = Actor.page(page).per(per_page)
    render json: { actors: actors.as_json(
      only: %i[id name]
    ), meta: pagination_dict(actors) }, status: 200
  end

  def show
    actor = Actor.find(params[:id])
    render json: { actor: actor }, status: 200
  end

  private

  def page
    @page ||=  params[:page] || 1
  end

  def per_page
    @per_page ||=  params[:per_page] || 10
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
