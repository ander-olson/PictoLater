Pictolater.Models.Profile = Backbone.Model.extend({
  urlRoot: 'api/profiles',

  photos: function () {
    if (!this._photos) {
      this._photos = new Pictolater.Collections.Photos();
    }
    return this._photos
  },

  parse: function (response) {
    if (response.photos) {
      this.photos().set(response.photos)
      delete response.photos
    }
    return response
  }
})
