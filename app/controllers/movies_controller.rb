class MoviesController < ApplicationController
  def index
    render({:template => "movie_templates/list"})
  end

  def show
    movie_id = params["movie_id"]

    @movie = Movie.where({:id => movie_id}).at(0)

    render({:template => "movie_templates/details"})

  end

end
