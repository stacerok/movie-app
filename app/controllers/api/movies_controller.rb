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

    @movies.save
    render "show.json.jb"
  end

  def destroy
    input = params[:id]
    @actors = Actor.find_by(id: input)

    @actors.destroy
    render json: "Destroyed!"
  end
end
