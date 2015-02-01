# For more information see: http://emberjs.com/guides/routing/

Songbook.Router.map ()->
  # @resource('song', {path: '/song/:song_id'})
  @resource 'song', path: '/:song_id'
  @resource('songs', path: '/')

Songbook.ApplicationRoute = Ember.Route.extend(model: ->
  @store.find 'song'
)

Songbook.SongsRoute = Ember.Route.extend(model: ->
  console.log('r 1')
  @store.all 'song'
)

Songbook.SongRoute = Ember.Route.extend(model: (params)->
  console.log('r 2')
  @store.find 'song', params.song_id
)