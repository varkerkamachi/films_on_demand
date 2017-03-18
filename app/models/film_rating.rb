class FilmRating < ActiveRecord::Base
  belongs_to :film
  belongs_to :user
end
