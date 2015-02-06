Pictolater.Views.CommentsIndex = Backbone.CompositeView.extend({
  template: JST["comments/index"],

  render: function () {
    if (this.collection.length === 0) {
      return this;
    }
    var view = this;
    this.$el.html(this.template())
    this.collection.forEach(function (comment) {
      var singleCommentView = new Pictolater.Views.CommentsIndexItem({
        model: comment
      });
      view.addSubview('.comments-index', singleCommentView);
    })
    return this;
  }
})
