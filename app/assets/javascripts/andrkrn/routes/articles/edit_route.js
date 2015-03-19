Luv.ArticlesEditRoute = Ember.Route.extend({
  renderTemplate: function() {
    this.render({outlet: 'article'});
  },

  model: function(params) {
    return this.store.find('article', params.id);
  },

});