Pictolater.Views.ProfileShow = Backbone.View.extend({
  template: JST["profiles/show"],

  photoTemplate: JST["profiles/photo_show"],

  initialize: function () {
    this.collection = this.model.photos();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model, "sync", this.animate);
    this.listenTo(this.collection, "sync reset", this.render);
    this.listenTo(this.collection, "sync reset", this.animate);
  },

  events: function () {
    'click #follow-button': "toggleFollow"
  },

  render: function () {
    var view = this;
    this.$el.html(this.template());

    this.collection.each(function (photo) {
      var source = $.cloudinary.image(photo.get('cloudinary_id'), {
        width: 200,
        height: 200,
        crop: "fill" })[0].src;

      var photoContent = view.photoTemplate({
        profile: view.model,
        source: source,
        photo: photo
      });

      view.$el.find('.profile-photos-holder').append(photoContent);
    })

    return this;
  },

  toggleFollow: function (event) {
    event.preventDefault();
    if (this.model.follow().isNew()) {
      this.model.follow().save();
      this.followersCount++;
    } else {
      this.model.follow().destroy();
      this.model.follow().set("id", null);
      this.followersCount = this.followersCount - 1;
    }

    this.model.set("followers_count", this.followersCount);
  },

  backToIndex: function (event) {
    event.preventDefault();
    Backbone.history.navigate('', { trigger: true })
  },

  animate: function () {
    $('.thumbnail-link').hide().first().show(120, function showNext() {
      $( this ).next('.thumbnail-link').show(120, showNext)
    });
  }
})
