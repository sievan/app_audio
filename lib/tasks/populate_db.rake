namespace :db do
  desc "Erase and fill database"
  def regex_song
    /(?m)((?<=(\\begin{songtext})|(\\newpage)).*?(?=(\\newpage)|(\\end{songt)))/
  end
  def regex_title
    /(?<=\\songtitle{).*(?=})/
  end
  def regex_meta
    /(?m)((?<=(\\begin{songmeta})|(\\newpage)).*?(?=(\\newpage)|(\\end{songm)))/
  end
  def double_backslash
    /\\\\\s*/
  end
  def add_to_db(attributes)
    @song = Song.new(attributes)
    @song.save
  end
  def all_songs_to_db
    list = []
    i = 0
    @songs = Song.all
    Dir.foreach('db/songs') do |item|
      next if item == '.' or item == '..' or !item.end_with?('.tex')
      f = File.open("db/songs/"+item, "r")
      raw_text = f.read
      hash = {
        id: i,
        title: regex_title.match(raw_text).to_s.sub(double_backslash, ''),
        meta: regex_meta.match(raw_text).to_s,
        text: regex_song.match(raw_text).to_s}
      list.push(hash)
      i+=1
      add_to_db(hash)
    end
    list
  end
  task populate: :environment do
    Song.delete_all
    all_songs_to_db
  end
end