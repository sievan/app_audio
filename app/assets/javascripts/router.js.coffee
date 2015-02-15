# For more information see: http://emberjs.com/guides/routing/

Songbook.Router.map ()->
  # @resource('song', {path: '/song/:song_id'})
  @resource 'song', path: '/:song_id'
  @resource('songs', path: '/')

Songbook.ApplicationRoute = Ember.Route.extend(model: ->
  @store.find 'song'
)

Songbook.SongsRoute = Ember.Route.extend(model: ->
  @store.all 'song'
)

Songbook.SongRoute = Ember.Route.extend(model: (params)->
  @store.find 'song', params.song_id
)