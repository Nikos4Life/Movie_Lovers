require 'sinatra'
require 'sinatra/reloader'
require_relative('lib/Movie_Lovers/Movie_Catalog.rb')

movies = MovieCatalog.new()

get "/" do
	erb :ejemplo, layout: :main
end

post "/movies_search" do
	@movie_list = movies.search(params[:search_movie])
  	@movie_list = movies.show_list(9)
	erb :show_movies, layout: :main
end