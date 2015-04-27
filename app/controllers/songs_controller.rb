class SongsController < ApplicationController
  def index
    render :json => Song.all
  end
end
