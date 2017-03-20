# films_on_demand

## Setup Documentation

  - git clone git@github.com:varkerkamachi/films_on_demand.git
  - cd films_on_demand
  - bundle install
  - rake db:create
  - rake db:migrate
  - rake db:seed
  - rspec spec/
  - rails s
  - browse to localhost:3000/films.json

## API Documentation
**Communication format:** Server works with JSON so every request to API should contain HTTP headers:

```
Content-Type    = application/json
Accept          = application/json
```


### Films index

    url:  /films(.:format)
    format: json
    method: GET

  Example

    curl -X GET -H "Content-Type: application/json" -H "Accept: application/json" http://localhost:1234/films.json

  Response

    [{"id":1,"title":"A Wonderful Film","description":"A cute film about lots of wonderful stuff.","url_slug":"a_wonderful_film","year":1973,"related_film_ids":[2,4,7],"average_rating":7.0},{"id":2,"title":"All About Fandor","description":"Documentary telling the tail of Fandor.","url_slug":"all_about_fandor","year":2001,"related_film_ids":[1,4,7],"average_rating":7.0},{"id":3,"title":"Dancing with Elephants","description":"The classic tale of Dancing with Wolves, but with elephants!","url_slug":"dancing_with_elephants","year":2016,"related_film_ids":[],"average_rating":5.0},{"id":4,"title":"The Story of George","description":"A true story outlining the adventures of George","url_slug":"the_story_of_george","year":1974,"related_film_ids":[1,2,7],"average_rating":1.0},{"id":5,"title":"Zee and Bee Go Skiiing","description":"The tragic story of Zee and Bee on their snowy adventures.","url_slug":"zee_and_bee_go_skiing","year":1991,"related_film_ids":[6,8,9,10],"average_rating":0.0},{"id":6,"title":"Ahead of Its Time","description":"A story about the future.","url_slug":"ahead_of_its_time","year":2088,"related_film_ids":[8,9,10],"average_rating":0.0},{"id":7,"title":"My Name is Jerry","description":"The life of the cat named Jerry.","url_slug":"my_name_is_jerry","year":1989,"related_film_ids":[1,2,4],"average_rating":0.0},{"id":8,"title":"Gems and Trestle","description":"Is it about web development? Mining history? You'll never know.","url_slug":"gems_and_trestle","year":2011,"related_film_ids":[9,10],"average_rating":6.0},{"id":9,"title":"How To React Natively","description":"A step by step journey through developing a React Native application.","url_slug":"how_to_react_natively","year":2000,"related_film_ids":[10],"average_rating":0.0},{"id":10,"title":"Perry Hotter: A Lizard's Tale","description":"It's a story all about a lizard named Perry.","url_slug":"perry_hotter_a_lizards_tale","year":2017,"related_film_ids":[],"average_rating":0.0}]
    
### Show film

    url:  /films/:id(.:format)
    format: json
    method: GET

  Request
  
    Headers:
      'Auth-Token': string
    
    Params:
      group_id: integer
      group_type: string

  Example

    curl -X GET -H "Content-Type: application/json" -H "Accept: application/json" http://localhost:1234/films/8.json

  Response

    {"id":8,"title":"Gems and Trestle","description":"Is it about web development? Mining history? You'll never know.","url_slug":"gems_and_trestle","year":2011,"related_film_ids":[9,10],"average_rating":6.0}
    


### Film Ratings index

    url:  /film_ratings(.:format)
    format: json
    method: GET

  Example

    curl -X GET -H "Content-Type: application/json" -H "Accept: application/json" http://localhost:1234/film_ratings.json

  Response
    [{"id":1,"title":"Brilliant!","description":"Well done","stars":9},{"id":2,"title":"Not bad for the money","description":"Was watchable","stars":6},{"id":3,"title":"Shameful!","description":"Worst movie I've ever seen  ","stars":1},{"id":4,"title":"Awful!","description":"What was this?","stars":1},{"id":5,"title":"Yeck","description":"This was the dumb version of that other dumb movie","stars":2},{"id":6,"title":"Pretty cool!","description":"Showed me insights about the ...","stars":7},{"id":7,"title":"Pretty cool!","description":"Showed me insights about the ...","stars":7},{"id":8,"title":"Just about what I expected","description":"Definitely no surprises here, a solidly made ...","stars":8},{"id":9,"title":"Unreal!","description":"The way those elephants moved, so graceful","stars":8},{"id":169,"title":"Wow wow - this movie should be illegal its so bad!","description":"Sometimes movies are just ... bad. No saving them. This was one of those","stars":2},{"id":170,"title":"Stunning setting, back in time","description":"This was one of those great period pieces","stars":6}]
    
### Show film rating

    url:  /film_ratings/:id(.:format)
    format: json
    method: GET

  Example

    curl -X GET -H "Content-Type: application/json" -H "Accept: application/json" http://localhost:1234/film_ratings/2.json

  Response

    {"id":2,"title":"Not bad for the money","description":"Was watchable","stars":6}
    
  
### User create a film rating

    url:  /films/:id/ratings(.:format)
    format: json
    method: POST

  Request
      
    Params:
      user_id: integer
      title: string
      derscription: text
      stars: integer

  Example

    curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" http://localhost:1234/films/8/ratings -d '{"user_id": 3, "title": "Stunning setting, back in time", "description": "This was one of those great period pieces", "stars": 6}'

  Response

    {"message":"Thanks for rating this flick!"}
    
       
