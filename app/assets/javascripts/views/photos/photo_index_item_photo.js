Pictolater.Views.PhotoIndexItemPhoto = Backbone.View.extend({
  template: JST["photos/actual_photo"],

  tagName: 'a',

  render: function () {
    this.$el.attr('href', '#photos/' + this.model.id);

    var source = $.cloudinary.image(this.model.get('cloudinary_id'), {
      width: 510,
      height: 510,
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
