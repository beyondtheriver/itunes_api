class SearchPageController < ApplicationController
   def index
   end

   def results
      @search_input = params[:search_input]
      @response = itunes_api_response
      @parsed = JSON.parse(@response)
      @song = @parsed["results"]
      @albums = group_by_album(@song)
   end

   def splitter(artist)
      name = artist.split(" ").join("+")
   end

   def itunes_api_response
      uri = URI("http://itunes.apple.com/search?term=" + @search_input + "&entity=song")
      Net::HTTP.get(uri)
   end

   def group_by_album(songs)
      @album_array = []

      songs.each do |x|
         if @album_array.include?(x["collectionName"])
            next
         else
            @album_array.push(x["collectionName"])
         end
      end

      return @album_array
   end

end
