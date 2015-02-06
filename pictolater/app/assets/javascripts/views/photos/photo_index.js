Pictolater.Views.PhotoIndex = Backbone.CompositeView.extend({
  template: JST["photos/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync add", this.render)
  },

  render: function () {
    this.$el.empty();
    var view = this;
    this.collection.each(function (photo) {

      var source = $.cloudinary.image(photo.get('cloudinary_id'), {
        width: 450,
        height: 450,
        crop: "fill" })[0].src;

      var photoContent = view.template({
        source: source,
        photo: photo
      });

      view.$el.append(photoContent);
    })
    return this;
  }
})
