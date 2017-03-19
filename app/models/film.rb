class Film < ActiveRecord::Base
  has_many :film_ratings
  has_many :film_relations

  def related_films attrs=nil
    related_films = []
    unless self.film_relations.blank?
      self.film_relations.each{|f| attrs.present? ? related_films << Film.find(f.related_film).send(attrs) : related_films << Film.find(f.related_film)}
    end
    related_films
  end

  def average_rating
    average_rating = 0
    unless self.film_ratings.blank?
      self.film_ratings.each{|x| average_rating += x.stars}
      average_rating = average_rating/self.film_ratings.count
    end
    sprintf('%0.1f', average_rating).to_f
  end
end
