Songbook.SongsController = Ember.ArrayController.extend({
  filter: '',
  filteredContent: function() {
    var filter = this.get('filter');
    var rx = new RegExp(filter, 'gi');
    var songs = this.get('arrangedContent');
    return songs.filter(function(song) {
      return song.get('title').match(rx);
    });
  }.property('arrangedContent','filter'),
  sortProperties: ['title'],
  sortAscending: true,
  sortFunction: function(a, b) {
    var aVal = a.toLowerCase().charCodeAt(0),
        bVal = b.toLowerCase().charCodeAt(0);
    if(aVal === 228) // Make å and ä switch places
      aVal = 229;
    else if (aVal === 229)
      aVal = 228;
    if(bVal === 228)
      bVal = 229;
    else if (bVal === 229)
      bVal = 228;
    return aVal-bVal;
  }
});