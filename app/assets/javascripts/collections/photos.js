Pictolater.Collections.Photos = Backbone.Collection.extend({
  url: 'api/photos',

  model: Pictolater.Models.Photo,

  comparator: function (photo1, photo2) {
    return (photo1.get('updated_at') < photo2.get('updated_at') ? 1 : -1)
  },

  parse: function (response) {
    this.page_number = response.page_number;
    this.total_pages = response.total_pages;
    return response.photos;
  },

  getOrFetch: function (id) {
    if (this.get(id)) {
      return this.get(id)
    }

    var photo = new Pictolater.Models.Photo( { id: id });
    photo.fetch();
    return photo
  },
})
