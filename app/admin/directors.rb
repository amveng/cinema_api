# frozen_string_literal: true

ActiveAdmin.register Director do
  permit_params :name

  index do
    id_column
    column :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
