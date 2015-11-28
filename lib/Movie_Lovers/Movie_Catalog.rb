require "imdb"
require 'pry'

class MovieCatalog 
	def initialize()
		@search_results
	end
	
	def search(title)
		@search_results = Imdb::Search.new(title).movies
		# binding.pry
	end

	def show_list(num_of_movies)
		@search_results.first(num_of_movies)
	end	
end