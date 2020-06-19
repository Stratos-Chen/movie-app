class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.where(english: "true")
    render "all_movies.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save
      render "find_movie.json.jb"
    else
      render json: {errors: @movie.errors.full_messages}, status: unprocessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render "find_movie.json.jb"
    else
      render json: {errors: @movie.errors.full_messages}, status: unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render "find_movie.json.jb"
  end
end
