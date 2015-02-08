Songbook.Song = DS.Model.extend({
  title: DS.attr('string'),
  meta: DS.attr('string'),
  text: DS.attr('string'),
  created_at: DS.attr('date'),
  updated_at: DS.attr('date')
});

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