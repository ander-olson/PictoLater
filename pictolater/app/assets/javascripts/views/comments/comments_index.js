Pictolater.Views.CommentsIndex = Backbone.CompositeView.extend({
  template: JST["comments/index"],

  initialize: function () {
    this.listenTo(this.collection, "add", this.render)
  },

  className: 'comment-composite-view',

  render: function () {
    this.$el.html(this.template());

    if (this.collection.length > 0) {
      var view = this;
      this.collection.forEach(function (comment) {
        var singleCommentView = new Pictolater.Views.CommentsIndexItem({
          model: comment
        });
        view.addSubview('.comments-index', singleCommentView);
      })
    }

    var commentForm = new Pictolater.Views.CommentForm({
      collection: this.collection,
      model: this.model
    });
    this.addSubview('.comments-index', commentForm);

    return this;
  }
})
