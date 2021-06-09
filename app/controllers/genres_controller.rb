class GenreController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create 
        @artist = Genre.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private
        def genre_params
            params.require(:genre).permit(:name)
        end
end