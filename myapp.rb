require "rubygems"
require "vendor/sinatra/lib/sinatra.rb"

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
           "byrds",
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
           "the allman brothers",
           "allman brothers",
           "the guess who",
           "guess who",
           "elton john",
           "ocean",
           "three dog night disc",
           "derek & the dominos",
           "derek and the dominos",
           "the moody blues",
           "moody blues",
           "five man electrical band",
           "jonathan edwards",
           "the o'jays",
           "o'jays",
           "cream",
           "jefferson airplane",
           "judy collins",
           "seals & crofts",
           "seals and crofts",
           "zager & evans",
           "zager and evans",
           "alice cooper",
           "deep purple",
           "the youngbloods",
           "youngbloods",
           "sonny & cher",
           "sonny and cher",
           "dion",
           "melanie",
           "spirit",
           "james taylor",
           "lobo",
           "otis redding"
          ]

def search()
  query = params[:query].downcase
  @match = ARTISTS.member?(query) || SONGS.member?(query)
  haml :search
end

get "/" do
  haml :index
end

get "/search/:query" do
  search
end

get "/search" do
  search
end
