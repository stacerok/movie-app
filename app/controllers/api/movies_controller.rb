class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    number = params[:id]
    @movies = Movie.find_by(id: number)
    render "show.json.jb"
  end

  def create
    @movies = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      english: params[:english],
      genre: params[:genre]
    )
    @movies.save
    render "show.json.jb" 
  end
  
  def update
    input = params[:id]
    @movies = Movie.find_by(id: input)

    @movies.title = params[:title] || @movies.title
    @movies.year = params[:year] || @movies.year
    @movies.plot = params[:plot] || @movies.plot
    @movies.english = params[:english] || @movies.english
    @movies.genre = params[:genre] || @movies.genre

    @movies.save
    render "show.json.jb"
  end

  def destroy
    input = params[:id]
    @movies = Movie.find_by(id: input)

    @movies.destroy
    render json: "Destroyed!"
  end
end
