# for more details see: http://emberjs.com/guides/views/

Songbook.SongView = Ember.View.extend
  templateName: 'song'
  didInsertElement: ->
    $('html body').animate({scrollTop: 0})