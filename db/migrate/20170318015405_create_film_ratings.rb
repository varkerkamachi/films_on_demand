class CreateFilmRatings < ActiveRecord::Migration
  def change
    create_table :film_ratings do |t|
      t.references :film, index: true
      t.references :user, index: true
      t.string :title
      t.text :description
      t.integer :stars

      t.timestamps
    end
  end
end
