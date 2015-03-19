Luv.ArticlesEditController = Ember.ObjectController.extend({

  actions: {
    edit: function(id) {
      var that = this,
          properties = that.getProperties('title', 'body'),
          article = that.get('model');

      article.setProperties(properties);
      article.save().then(function() {
        that.get('target').transitionTo('articles.index');
      });
    }
  }
});