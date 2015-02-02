class SongsController < ApplicationController
  def index
    render :json => Song.all
  end
  def show
    puts params, params[:id].to_i
    render :json => {song: all_songs[params[:id].to_i]}
  end
end
