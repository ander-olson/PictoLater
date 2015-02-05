Pictolater.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.photoCollection = options.photoCollection;
    this.profileCollection = options.profileCollection;
    this.attachFilePicker();
  },

  routes: {
    "": "photoIndex",
    "photos/:id": "photoShow",
    "profiles": "profileIndex",
    "profiles/:id": "showProfile",
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

  photoShow: function (id) {
    var photo = this.photoCollection.getOrFetch(id);

    var photoView = new Pictolater.Views.PhotoShow({
      model: photo
    });

    this._swapView(photoView);
  },

  profileIndex: function () {
    this.profileCollection.fetch();

    var indexView = new Pictolater.Views.ProfilesIndex({
      collection: this.profileCollection
    });

    this._swapView(indexView);
  },

  showProfile: function (id) {
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
