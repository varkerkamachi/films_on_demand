class CreateFilmRelations < ActiveRecord::Migration
  def change
    create_table :film_relations do |t|
      t.references :film, index: true
      t.integer :related_film

      t.timestamps
    end
  end
end
