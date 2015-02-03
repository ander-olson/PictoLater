window.Pictolater = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new Pictolater.Routers.Router({
      $rootEl: $('#main'),
      collection: new Pictolater.Collections.Profiles()
    })
    Backbone.history.start();
  }
};
