# for more details see: http://emberjs.com/guides/views/

Songbook.SongsView = Ember.View.extend
  templateName: 'songs'
  didInsertElement: ->
    @_super()
    @$().find('ul').addClass('slide-up')