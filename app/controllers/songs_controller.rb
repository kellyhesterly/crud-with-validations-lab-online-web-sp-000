class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new(song_params)
  end

  def edit
  end

  private

  def song_params
    params.permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
