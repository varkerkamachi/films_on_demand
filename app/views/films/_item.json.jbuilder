json.(item, :id, :title, :description, :url_slug, :year)

json.related_film_ids item.related_films.present? ? item.related_films('id') : []
json.average_rating item.average_rating

