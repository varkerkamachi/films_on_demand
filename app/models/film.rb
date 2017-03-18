class Film < ActiveRecord::Base
  has_many :film_ratings
  has_many :film_relations
end
