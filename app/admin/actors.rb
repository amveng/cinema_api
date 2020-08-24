# frozen_string_literal: true

ActiveAdmin.register Actor do
  permit_params :name, film_ids: []

  index do
    id_column
    column :name
    column :films
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :films
    end
    f.actions
  end
end
