Pictolater.Views.PhotoIndexItem = Backbone.CompositeView.extend({
  template: JST["photos/index_item"],

  className: "row photo-row",

  render: function () {
    var photoContent = new Pictolater.Views.PhotoIndexItemPhoto({
      model: this.model
    })
    var commentsContent = new Pictolater.Views.CommentsIndex({
      model: this.model,
      collection: this.model.comments()
    })
    this.$el.html(this.template({ user: this.model.owner() } ))

    this.addSubview('.photo-holder', photoContent);
    this.addSubview('.comments-holder', commentsContent);

    return this;
  }
})
