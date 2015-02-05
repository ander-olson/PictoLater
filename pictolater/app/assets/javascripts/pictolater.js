window.Pictolater = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new Pictolater.Routers.Router({
      $rootEl: $('#main'),
      photoCollection: new Pictolater.Collections.Photos(),
      profileCollection: new Pictolater.Collections.Profiles(),
    });

    Backbone.history.start();
  }
};
