class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :name
    end

    create_table :directors_films, id: false do |t|
      t.belongs_to :director
      t.belongs_to :film
    end
  end
end
