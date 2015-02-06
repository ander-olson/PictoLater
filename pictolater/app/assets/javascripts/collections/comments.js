Pictolater.Collections.Comments = Backbone.Collection.extend({
  url: 'api/comments',

  model: Pictolater.Models.Photo,

  comparator: function (comment1, comment2) {
    return (comment1.get('updated_at') < comment2.get('updated_at') ? 1 : -1)
  },

  parse: function (response) {
    return response.comments;
  }
})
