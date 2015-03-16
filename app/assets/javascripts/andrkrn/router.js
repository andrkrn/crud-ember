// For more information see: http://emberjs.com/guides/routing/

Luv.Router.map(function() {
  this.resource('articles', function() {
    this.route('new');
    this.route('edit', {path: '/:id/edit'});
  });
});

Luv.Router.reopen({
  location: 'history'
});
