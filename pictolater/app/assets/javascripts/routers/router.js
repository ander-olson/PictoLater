Pictolater.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.photoCollection = options.photoCollection;
    this.profileCollection = options.profileCollection;
    this.attachFilePicker();
  },

  routes: {
    "": "photoIndex",
    "profiles": "profileIndex",
    "profiles/:id": "show",
  },

  attachFilePicker: function () {
    var filePickerView = new Pictolater.Views.FilePicker({
      collection: this.photoCollection
    });
    $('.filepicker-holder').html(filePickerView.render().$el);
  },

  photoIndex: function () {
    this.photoCollection.fetch();
    var photoIndexView = new Pictolater.Views.PhotoIndex({
      collection: this.photoCollection
    });
    this._swapView(photoIndexView);
  },

  profileIndex: function () {
    this.profileCollection.fetch();

    var indexView = new Pictolater.Views.ProfilesIndex({
      collection: this.profileCollection
    });

    this._swapView(indexView);
  },

  show: function (id) {
    var profile = this.profileCollection.getOrFetch(id);
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
