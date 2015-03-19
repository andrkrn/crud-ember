Luv.ArticlesNewRoute = Ember.Route.extend({
  renderTemplate: function() {
    this.render({outlet: 'article'});
  },

  model: function() {
    return this.store.createRecord('article');
  }
});