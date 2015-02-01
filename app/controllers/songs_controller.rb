class SongsController < ApplicationController
  def index
    render :json => songs
  end
  def show
    puts params, params[:id].to_i
    render :json => {song: songs[params[:id].to_i]}
  end
  private
  def songs
    [
      {
        id: 1,
        title: 'Learn Ember.js',
        text: "Bla bla bla"
      },
      {
        id: 2,
        title: '...',
        text: tex_song
      },
      {
        id: 3,
        title: 'Profit!',
        text: "Bla bla bla"
      }
    ]
  end
  def regex
    /(?m)((?<=(\\begin{songtext})|(\\newpage)).*?(?=(\\newpage)|(\\end{songt)))/
  end
  def tex_song
    f = File.open("db/songs/test_song.tex", "r")
    text = f.read
    regex.match(text).to_s
  end
end
