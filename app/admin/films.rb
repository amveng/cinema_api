# frozen_string_literal: true

ActiveAdmin.register Film do
  permit_params :title, :title_original, :production_year, :image, :description,
                genre_ids: [], director_ids: [], actor_ids: []
  index do
    id_column
    # column :image
    column :title
    column :title_original
    column :genres
    column :directors
    column :actors
    column :production_year
    column :description
    actions
  end

  filter :title
  filter :production_year

  form do |f|
    f.inputs do
      f.input :title
      f.input :title_original
      f.input :genres
      # f.input :genres, as: :check_boxes
      f.input :directors
      f.input :actors
      f.input :production_year
      f.input :image
      f.input :description
    end
    f.actions
  end
end
