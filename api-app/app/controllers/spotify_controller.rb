class SpotifyController < ApplicationController
	def search
		title = params[:title]
		if title
			@results = RSpotify::Artists.Search(title)
		end
	end
end
