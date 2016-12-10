class SpotifyController < ApplicationController
	def search
		title = params[:title]
		
		@artists = []
		@tracks = []
		
		if title
			@artists = RSpotify::Artist.search(title)
			@tracks = RSpotify::Track.search(title)
		end
	end
end
