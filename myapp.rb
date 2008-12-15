require "rubygems"
require "sinatra"

SONGS = [
         "turn, turn, turn",
         "i'd love to change the world",
         "locomotive breath",
         "the night they drove old dixie down",
         "war",
         "black magic woman",
         "jump into the fire",
         "smoke on the water",
         "united we stand",
         "one tin soldier (the legend of billy jack )",
         "somebody to love",
         "going up the country",
         "reach out of the darkness",
         "a horse with no name",
         "free bird",
         "ramblin' man",
         "share the land",
         "friends",
         "put your hand in the hand",
         "black & white",
         "layla",
         "the story in your eyes",
         "signs",
         "sunshine",
         "love train",
         "white room",
         "white rabbit",
         "both sides now",
         "we may never pass this way again",
         "in the year",
         "eighteen",
         "hush",
         "get together",
         "the beat goes on",
         "abraham, martin & john",
         "lay down",
         "i got a line on you",
         "fire and rain",
         "me and you and a dog named boo",
         "sittin' on the dock of the bay"
        ]

ARTISTS = [
           "the byrds",
           "ten years after",
           "jethro tull",
           "joan baez",
           "edwin starr",
           "santana",
           "nilsson",
           "deep purple",
           "brotherhood of man",
           "coven",
           "jefferson airplane",
           "canned heat",
           "friend and lover",
           "america",
           "lynyrd skynyrd",
           "the allman brothers band",
           "the guess who",
           "elton john",
           "ocean",
           "three dog night disc",
           "derek & the dominos",
           "the moody blues",
           "five man electrical band",
           "jonathan edwards",
           "the o'jays",
           "cream",
           "jefferson airplane",
           "judy collins",
           "seals & crofts",
           "zager & evans",
           "alice cooper",
           "deep purple",
           "the youngbloods",
           "sonny & cher",
           "dion",
           "melanie",
           "spirit",
           "james taylor",
           "lobo",
           "otis redding"
          ]

get "/" do
  haml :index
end

post "/search" do
  query = params[:query].downcase
  @message = "Turn if off!"
  @match = false
  if ::ARTISTS.member?(query) || ::SONGS.member?(query)
    @message = "Turn in up!"
    @match = true
  end
  haml :search
end
