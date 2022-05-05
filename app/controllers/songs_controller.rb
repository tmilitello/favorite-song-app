class SongsController < ApplicationController

  def index
    songs = Song.all
    render json: {songs: songs}
  end

end
