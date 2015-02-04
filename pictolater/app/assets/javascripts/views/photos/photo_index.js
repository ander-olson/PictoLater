Pictolater.Views.PhotoIndex = Backbone.CompositeView.extend({
  template: JST["photos/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync add", this.render)
  },

  render: function () {
    var photosContent = this.template({ photos: this.collection });
    this.$el.html(photosContent);
    return this;
  }
})
