#= require jquery
#= require ember
#= require ember-data
#= require ember-template-compiler
#= require_self
#= require songbook
#= require jquery_ujs
#= require twitter/bootstrap
#= require_tree .

# for more details see: http://emberjs.com/guides/application/
window.Songbook = Ember.Application.create({
  rootElement: '.container'
})
