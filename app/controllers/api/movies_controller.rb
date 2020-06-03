class Api::MoviesController < ApplicationController
  def index
    @movie = Movie.all
    render "all_movies.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "find_movie.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    @movie.save
    render "find_movie.json.jb"
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.save
    render "find_movie.json.jb"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render "find_movie.json.jb"
  end
end
