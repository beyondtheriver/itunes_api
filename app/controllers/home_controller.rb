# include 'APIS'
class HomeController < ApplicationController
   def index
      @songs = APIS::Itunes.new.search_songs('weezer')
      @movies = APIS::Itunes.new.search_movies('dead poets society')
   end
end
