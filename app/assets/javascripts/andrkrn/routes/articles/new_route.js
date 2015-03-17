Luv.ArticlesNewRoute = Kurkur.AuthenticatedRoute.extend({
  model: function() {
    return this.store.createRecord('article');
  }
});