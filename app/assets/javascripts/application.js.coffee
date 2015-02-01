#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require songbook

# for more details see: http://emberjs.com/guides/application/
window.Songbook = Ember.Application.create()

Songbook.ApplicationAdapter = DS.FixtureAdapter.extend();