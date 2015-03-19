Luv.ArticlesIndexController = Ember.ArrayController.extend({
  sortProperties: ['id'],
  sortAscending: false,

  filteredContent: function() {
    return this.get('arrangedContent').filter(function(item, index) {
      return !(item.get('isDirty'));
    });
  }.property('content.@each'),

  actions: {
    deleteArticle: function(article) {
      this.store.find('article', article.id).then(function (article) {
        article.destroyRecord();
      });
    }
  }
});