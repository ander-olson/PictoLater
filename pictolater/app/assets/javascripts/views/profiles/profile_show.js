Pictolater.Views.ProfileShow = Backbone.View.extend({
  template: JST["profiles/show"],

  initialize: function () {
    this.collection = this.model.photos();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model, "sync", this.animate);
    this.listenTo(this.collection, "sync reset", this.render);
    this.listenTo(this.collection, "sync reset", this.animate);
  },

  className: 'profile-photos-holder',

  render: function () {
    var view = this;
    this.model.photos().each(function (photo) {
      var source = $.cloudinary.image(photo.get('cloudinary_id'), {
        width: 200,
        height: 200,
        crop: "fill" })[0].src;

      var photoContent = view.template({
        profile: view.model,
        source: source,
        photo: photo
      });

      view.$el.append(photoContent);
    })

    return this;
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
