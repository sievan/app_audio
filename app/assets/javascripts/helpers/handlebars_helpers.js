Ember.Handlebars.registerBoundHelper('expandLineBreaks', function (text) {
    return new Ember.Handlebars.SafeString(text.replace(/\n/g, '<br>'));
});