class FilmRating < ActiveRecord::Base
  belongs_to :film
  belongs_to :user

  scope :for_film, ->(film_id) { where('film_id = ?', film_id) }
end
