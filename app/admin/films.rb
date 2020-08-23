ActiveAdmin.register Film do
  permit_params :title, :title_original, :production_year, :image, :description, genre_ids: []
  index do
    id_column
    column :image
    column :genres
    column :title
    column :title_original
    column :production_year
    column :description
    actions
  end

  filter :title
  filter :production_year

  form do |f|
    f.inputs do
      f.input :title
      f.input :genres, as: :check_boxes
      # f.input :genre, as: :check_boxes, collection: Genre.all
      f.input :title_original
      f.input :production_year
      f.input :image
      f.input :description
    end
    f.actions
  end

end
