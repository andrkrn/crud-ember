Kurkur.ArticlesIndexRoute = Kurkur.AuthenticatedRoute.extend({

  model: function() {
    return this.store.find('article');
  }

});