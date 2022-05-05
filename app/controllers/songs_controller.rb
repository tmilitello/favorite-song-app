class SongsController < ApplicationController

  def index
    songs = Song.all
    render json: {songs: songs}
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: {song: song}
  end

  def create
    song = Song.create(
      title: "sample_title",
      album: "sample_album", 
      artist: "sample_artist", 
      year: "sample_year"
    )
    render json: {song: song}
  end

  def update
    song = Song.find_by(id: params[:id])
    song.update(
      title: "sample_title11",
      album: "sample_album", 
      artist: "sample_artist", 
      year: "sample_year"
    )
    song.save
    render json: {song: song}
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.delete

    render json: {message: "This has been deleted"}
  end


end
