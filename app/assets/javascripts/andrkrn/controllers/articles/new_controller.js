Luv.ArticlesNewController = Ember.ObjectController.extend({
  title: '',
  body: '',
  errors: false,
  error_messages: '',

  actions: {
    create: function() {
      var that = this,
          properties = that.getProperties('title', 'body');

      var article = that.store.createRecord('article', properties);
      article.save().then(function() {
        that.setProperties({
          title: '',
          body: ''
        });
        that.get('target').transitionTo('articles.index');
      }, function(e) {
        that.set('errors', true);
        that.set('error_messages', e.message);
      });
    }
  }
});