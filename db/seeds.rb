# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(
  [
    {first_name: 'Gene', last_name: 'Siskel', email: 'gene@cinema.com'},
    {first_name: 'Roger', last_name: 'Ebert', email: 'roger@cinema.com'},
    {first_name: 'Nancy', last_name: 'Drew', email: 'nancy@cinema.com'}
  ]
)

films = Film.create(
  [
    {
      "title"=> "A Wonderful Film",
      "description"=> "A cute film about lots of wonderful stuff.",
      "url_slug"=> "a_wonderful_film",
      "year"=> 1973
    },
    {
      "title"=> "All About Fandor",
      "description"=> "Documentary telling the tail of Fandor.",
      "url_slug"=> "all_about_fandor",
      "year"=> 2001
    },
    {
      "title"=> "Dancing with Elephants",
      "description"=> "The classic tale of Dancing with Wolves, but with elephants!",
      "url_slug"=> "dancing_with_elephants",
      "year"=> 2016
    },
    {
      "title"=> "The Story of George",
      "description"=> "A true story outlining the adventures of George",
      "url_slug"=> "the_story_of_george",
      "year"=> 1974
    },
    {
      "title"=> "Zee and Bee Go Skiiing",
      "description"=> "The tragic story of Zee and Bee on their snowy adventures.",
      "url_slug"=> "zee_and_bee_go_skiing",
      "year"=> 1991
    },
    {
      "title"=> "Ahead of Its Time",
      "description"=> "A story about the future.",
      "url_slug"=> "ahead_of_its_time",
      "year"=> 2088
    },
    {
      "title"=> "My Name is Jerry",
      "description"=> "The life of the cat named Jerry.",
      "url_slug"=> "my_name_is_jerry",
      "year"=> 1989
    },
    {
      "title"=> "Gems and Trestle",
      "description"=> "Is it about web development? Mining history? You'll never know.",
      "url_slug"=> "gems_and_trestle",
      "year"=> 2011
    },
    {
      "title"=> "How To React Natively",
      "description"=> "A step by step journey through developing a React Native application.",
      "url_slug"=> "how_to_react_natively",
      "year"=> 2000
    },
    {
      "title"=> "Perry Hotter: A Lizard's Tale",
      "description"=> "It's a story all about a lizard named Perry.",
      "url_slug"=> "perry_hotter_a_lizards_tale",
      "year"=> 2017
    }
  ])

film_relations = FilmRelation.create(
  [
    {
      "film_id"=> 1,
      "related_film"=> 2
    },
    {
      "film_id"=> 1,
      "related_film"=> 4
    },
    {
      "film_id"=> 1,
      "related_film"=> 7
    },
    {
      "film_id"=> 2,
      "related_film"=> 1
    },
    {
      "film_id"=> 2,
      "related_film"=> 4
    },
    {
      "film_id"=> 2,
      "related_film"=> 7
    },
    {
      "film_id"=> 4,
      "related_film"=> 1
    },
    {
      "film_id"=> 4,
      "related_film"=> 2
    },
    {
      "film_id"=> 4,
      "related_film"=> 7
    },
    {
      "film_id"=> 5,
      "related_film"=> 6
    },
    {
      "film_id"=> 5,
      "related_film"=> 8
    },
    {
      "film_id"=> 5,
      "related_film"=> 9
    },
    {
      "film_id"=> 5,
      "related_film"=> 10
    },
    {
      "film_id"=> 6,
      "related_film"=> 8
    },
    {
      "film_id"=> 6,
      "related_film"=> 9
    },
    {
      "film_id"=> 6,
      "related_film"=> 10
    },
    {
      "film_id"=> 7,
      "related_film"=> 1
    },
    {
      "film_id"=> 7,
      "related_film"=> 2
    },
    {
      "film_id"=> 7,
      "related_film"=> 4
    },
    {
      "film_id"=> 8,
      "related_film"=> 9
    },
    {
      "film_id"=> 8,
      "related_film"=> 10
    },
    {
      "film_id"=> 9,
      "related_film"=> 10
    }
  ])

film_ratings = FilmRating.create(
  [
    {
      "film_id"=> 1,
      "user_id"=> 2,
      "title"=>"Brilliant!",
      "description"=>"Well done",
      "stars"=>9
    },
    {
      "film_id"=> 1,
      "user_id"=> 1,
      "title"=>"Not bad for the money",
      "description"=>"Was watchable",
      "stars"=>6
    },
    {
      "film_id"=> 4,
      "user_id"=> 3,
      "title"=>"Shameful!",
      "description"=>"Worst movie I've ever seen  ",
      "stars"=>1
    },
    {
      "film_id"=> 4,
      "user_id"=> 2,
      "title"=>"Awful!",
      "description"=>"What was this?",
      "stars"=>1
    },
    {
      "film_id"=> 4,
      "user_id"=> 1,
      "title"=>"Yeck",
      "description"=>"This was the dumb version of that other dumb movie",
      "stars"=>2
    },
    {
      "film_id"=> 2,
      "user_id"=> 2,
      "title"=>"Pretty cool!",
      "description"=>"Showed me insights about the ...",
      "stars"=>7
    },
    {
      "film_id"=> 2,
      "user_id"=> 1,
      "title"=>"Pretty cool!",
      "description"=>"Showed me insights about the ...",
      "stars"=>7
    },
    {
      "film_id"=> 2,
      "user_id"=> 3,
      "title"=>"Just about what I expected",
      "description"=>"Definitely no surprises here, a solidly made ...",
      "stars"=>8
    },
    {
      "film_id"=> 3,
      "user_id"=> 2,
      "title"=>"Unreal!",
      "description"=>"The way those elephants moved, so graceful",
      "stars"=>8
    }
  ])
