// Adds X-CSRF-Token to all REST requests.
// Allows for the use of Rails protect_from_forgery
// The CSRF Token is normally found in app/views/layouts/application.html.*
// inserted with the rails helper: "csrf_meta_tags"
Luv.AplicationStore = DS.Store.extend({
  revision: 1,
  adapter: DS.RESTAdapter.create()
});

DS.RESTAdapter.reopen({
  headers: {
    "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')
  },
  namespace: "api/v1"
});
