Pictolater.Views.PhotoShow = Backbone.View.extend({
  template: JST["photos/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  render: function () {
    var photoContent = this.template({
      photo: this.model
    });

    this.$el.html(photoContent);
    return this;
  }
})
