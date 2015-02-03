Pictolater.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.collection = options.collection;

  },

  routes: {
    "": "index",
    "profiles/:id": "show"
  },

  index: function () {
    var collection = this.collection;
    collection.fetch();

    var indexView = new Pictolater.Views.ProfilesIndex({
      collection: collection
    });

    this._swapView(indexView);
  },

  show: function (id) {
    var profile = this.collection.getOrFetch(id);
    var showView = new Pictolater.Views.ProfileShow({
      model: profile
    });

    this._swapView(showView);
  },

  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
})
