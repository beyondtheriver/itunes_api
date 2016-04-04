class APIS::Itunes
   def search_songs(term)
      uri = URI("http://itunes.apple.com/search?term=#{term}&entity=song")
      JSON.parse(Net::HTTP.get(uri))['results']
   end

   def search_movies(term)
      uri = URI("http://itunes.apple.com/search?term=#{term}&media=movie&entity=movie")
      JSON.parse(Net::HTTP.get(uri))['results']
   end
end
