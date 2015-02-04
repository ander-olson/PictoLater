Pictolater.Collections.Photos = Backbone.Collection.extend({
  url: 'api/photos',

  model: Pictolater.Models.Photo,

  parse: function (response) {
    return response.photos;
  }
})
