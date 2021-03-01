class Api::MoviesController < ApplicationController
  def all_movies_action
    @all_movies = Movie.all
    render "all_movies.json.jb"
  end

  def first_movie_action
    @first_movie = Movie.first
    render "first_movie.json.jb"
  end



end
