Luv.ArticlesIndexController = Ember.ArrayController.extend({
  sortProperties: ['id'],
  sortAscending: false,

  filteredContent: function() {
    return this.get('arrangedContent').filter(function(item, index) {
      return !(item.get('isDirty'));
    });
  }.property('content.@each')
  
});