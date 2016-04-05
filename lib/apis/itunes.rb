class APIS::Itunes
   def search_songs(term)
      api_call(term, "song")
   end

   def search_movies(term)
      api_call(term, "movie")
   end

   def search_tvShow(term)
      api_call(term, "tvEpisode")
   end

   def search_ebook(term)
      JSON.parse(Net::HTTP.get(URI("http://itunes.apple.com/search?term=#{term}&media=ebook&entity=ebook")))['results']
   end
   private
   def api_call(uri, entity)
      uri = URI("http://itunes.apple.com/search?term=#{term}&entity=#{entity}")
      JSON.parse(Net::HTTP.get(uri))['results']
   end
end
