require 'spec_helper'
require 'pry'
require_relative("../lib/Movie_Lovers/Movie_Catalog.rb")

describe MovieLovers do
  it 'has a version number' do
    expect(MovieLovers::VERSION).not_to be nil
  end
  it "searchs a film inside IMDB's database" do
  	movies = MovieCatalog.new()
  	movie_list = movies.search("Batman")
  	movie_list = movies.show_list(9)
  	expect(movie_list.size).to eq(9)
  end
end
