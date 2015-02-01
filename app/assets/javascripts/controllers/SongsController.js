Songbook.SongsController = Ember.ArrayController.extend({
  filter: '',
  filteredContent: function() {
    var filter = this.get('filter');
    var rx = new RegExp(filter, 'gi');
    var songs = this.get('arrangedContent');
    return songs.filter(function(song) {
      return song.get('title').match(rx);
    });
  }.property('arrangedContent','filter')
});