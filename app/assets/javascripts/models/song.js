Songbook.Song = DS.Model.extend({
  title: DS.attr('string'),
  text: DS.attr('string')
});

Songbook.Song.FIXTURES = [
 {
   id: 1,
   title: 'Learn Ember.js',
   text: "Bla bla bla"
 },
 {
   id: 2,
   title: '...',
   text: "Bla bla bla"
 },
 {
   id: 3,
   title: 'Profit!',
   text: "Bla bla bla"
 }
];

Handlebars.registerHelper("debug", function(optionalValue) {
  console.log("Current Context");
  console.log("====================");
  console.log(this);

  if (optionalValue) {
    console.log("Value");
    console.log("====================");
    console.log(optionalValue);
  }
});