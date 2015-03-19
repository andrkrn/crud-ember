Luv.ArticlesIndexRoute = Ember.Route.extend({
  renderTemplate: function() {
    this.render({outlet: 'article'});
  },

  model: function() {
    return this.store.find('article');
  },

});