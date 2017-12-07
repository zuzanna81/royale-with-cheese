class LandingController < ApplicationController
  def index
    # @movies = Tmdb { results:[] }
  end

  def search
    genre = params[:genre].capitalize
    movie_genre = Tmdb::Genre.movie_list.select{ |m| m.name == genre }.first
    @movies = Tmdb::Discover.movie(sort_by: 'popularity.desc', with_genres: "#{movie_genre.id}")

    render :index
  end
end
