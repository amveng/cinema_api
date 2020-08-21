class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :title_original
      t.integer :production_year
      t.string :image
      t.text :description
      t.timestamps
    end
  end
end
