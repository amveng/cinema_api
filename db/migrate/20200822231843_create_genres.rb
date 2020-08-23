class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name
    end

    create_table :films_genres, id: false do |t|
      t.belongs_to :genre
      t.belongs_to :film
    end
  end
end
