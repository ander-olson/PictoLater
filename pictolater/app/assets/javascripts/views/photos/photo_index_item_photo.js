Pictolater.Views.PhotoIndexItemPhoto = Backbone.View.extend({
  template: JST["photos/actual_photo"],

  render: function () {
    var source = $.cloudinary.image(this.model.get('cloudinary_id'), {
      width: 450,
      height: 450,
      crop: "fill"
    })[0].src;

    var photoContent = this.template({
      src: source,
      id: this.model.id
    })

    this.$el.html(photoContent);

    return this;
  }
})


    this.model
