class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
    end
    create_table :actors_films, id: false do |t|
      t.belongs_to :actor
      t.belongs_to :film
    end
  end
end
