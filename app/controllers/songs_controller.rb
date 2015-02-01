class SongsController < ApplicationController
  def index
    render :json => Song.all
  end
  def show
    puts params, params[:id].to_i
    render :json => {song: all_songs[params[:id].to_i]}
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
        text: "hje hej"
      },
      {
        id: 3,
        title: 'Profit!',
        text: "Bla bla bla"
      }
    ]
  end
  def regex_song
    /(?m)((?<=(\\begin{songtext})|(\\newpage)).*?(?=(\\newpage)|(\\end{songt)))/
  end
  def regex_title
    /(?<=\\songtitle{).*(?=})/
  end
  def tex_song
    f = File.open("db/songs/test_song.tex", "r")
    text = f.read
    all_songs
    regex_song.match(text).to_s
  end
  def all_songs_to_db
    list = []
    i = 0
    @songs = Song.all
    # if @songs
    #   puts "=============", @songs, "============="
    #   return @songs
    # end
    Dir.foreach('db/songs') do |item|
      next if item == '.' or item == '..' or !item.end_with?('.tex')
      f = File.open("db/songs/"+item, "r")
      raw_text = f.read
      hash = {
        id: i,
        title: regex_title.match(raw_text).to_s,
        text: regex_song.match(raw_text).to_s}
      list.push(hash)
      i+=1
      add_to_db(hash)
    end
    list
  end
  def add_to_db(attributes)
    @song = Song.new(attributes)
    @song.save
  end
end
