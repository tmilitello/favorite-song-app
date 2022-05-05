class SongsController < ApplicationController

  def index
    songs = Song.all
    render json: {songs: songs}
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: {song: song}
  end

end
