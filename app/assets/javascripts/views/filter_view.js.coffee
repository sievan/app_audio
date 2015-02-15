# for more details see: http://emberjs.com/guides/views/

Songbook.FilterView = Ember.View.extend
  templateName: 'filter'
  didInsertElement: ->
    @_super()
    @$().find('.input-group-addon').click( ->
      $('#song-filter').focus();
      )

