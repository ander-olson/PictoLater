Pictolater.Views.PhotoIndexItem = Backbone.CompositeView.extend({
  template: JST["photos/index_item"],

  render: function () {
    var photoContent = new Pictolater.Views.PhotoIndexItemPhoto({
      model: this.model
    })
    var commentsContent = new Pictolater.Views.CommentsIndex({
      collection: this.model.comments()
    })

    this.$el.html(this.template())

    this.addSubview('.photo-holder', photoContent);
    this.addSubview('.comments-holder', commentsContent);

    return this;
  }
})
