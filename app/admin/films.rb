ActiveAdmin.register Film do
  permit_params :title, :title_original, :production_year, :image, :description

  # show do |film|
  #   attributes_table do
  #     row :title
  #     row :description
  #     row :title_original
  #     row :image do
  #       image_tag(film.image_url)
  #     end
  #     active_admin_comments
  #   end
  # end

  index do
    id_column
    column :image
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
      f.input :title_original
      f.input :production_year
      f.input :image
      f.input :description
    end
    f.actions
  end

end
