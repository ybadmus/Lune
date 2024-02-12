class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show update destroy ]

  # GET /movies
  def index
    @movies = Movie.all
    @movies = filter_movies(@movies, params)
    @movies = @movies.sort_by(&:average_rating).reverse
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:query)
    end

    def filter_movies(movies, params)
      return movies if params.blank? || params[:query].blank?

      filtered_movies = movies
      filtered_movies = filtered_movies.where('actor LIKE :query', query: "%#{params[:query]}%") if params[:query].present?
      filtered_movies
    end
end
