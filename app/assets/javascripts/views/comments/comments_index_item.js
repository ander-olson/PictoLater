Pictolater.Views.CommentsIndexItem = Backbone.View.extend({
  template: JST["comments/index_item"],

  tagName: 'li',
  
  className: 'individual-comment',

  render: function () {
    var commentContent = this.template({
      comment: this.model
    })
    this.$el.html(commentContent);
    return this;
  }
})
