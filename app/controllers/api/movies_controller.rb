class Api::MoviesController < ApplicationController
  @portray = Movie.all
  render "find_movie.json.jb"
end
