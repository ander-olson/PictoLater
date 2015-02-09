Pictolater.Views.CommentForm = Backbone.View.extend({
  template: JST["comments/form"],

  tagName: 'form',

  events: {
    "submit": "addComment"
  },

  className: 'new-comment-form',

  render: function () {
    var formContent = this.template();
    this.$el.html(formContent);
    return this;
  },

  addComment: function (event) {
    event.preventDefault();
    var commentBody = $(event.target).find('input').val();

    var newComment = new Pictolater.Models.Comment({
      body: commentBody,
      commenter_id: currentUser.id,
      photo_id: this.model.id
    });

    var view = this;
    this.model.comments().create(newComment, {
      success: function (response) {
        console.log("Success!");
        $(event.target).val('');
      },
      wait: true
    });
  }
})
