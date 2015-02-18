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
    var username = this.model.owner();
    var id = this.model.get('owner_id');

    var userContent = this.template({
      user: username,
      id: id
    });

    this.$el.html(userContent);

    this.addSubview('.photo-holder', photoContent);
    this.addSubview('.comments-holder', commentsContent);

    return this;
  }
})
