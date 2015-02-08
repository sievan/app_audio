# for more details see: http://emberjs.com/guides/views/

Songbook.SongsView = Ember.View.extend
  templateName: 'songs'
  didInsertElement: ->
    @_super()
    unless Songbook.hasAnimated
      @$().find('ul').addClass('slide-up') unless Songbook.hasAnimated
      Songbook.hasAnimated = true
    else
      $(document).scrollTop(0)