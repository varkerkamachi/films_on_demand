class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
      t.string :url_slug
      t.integer :year

      t.timestamps
    end
  end
end
