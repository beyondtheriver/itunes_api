# include 'APIS'
class HomeController < ApplicationController
   def index
      @songs = APIS::Itunes.new.search_songs('weezer')
   end
   def moviePage
      @movies = APIS::Itunes.new.search_movies('dead poets society')
   end
   def tvEpisodePage
      @tvEpisodes = APIS::Itunes.new.search_tvShow('better call saul')
   end
   def ebookPage
      @ebook = APIS::Itunes.new.search_ebook('harry potter')
   end
end
