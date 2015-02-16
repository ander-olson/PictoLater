Pictolater.Collections.Profiles = Backbone.Collection.extend({
  url: 'api/profiles',

  model: Pictolater.Models.Profile,

  getOrFetch: function (id) {
    if (this.get(id)) {
      return this.get(id)
    }

    var profile = new Pictolater.Models.Profile( { id: id });
    profile.fetch();
    return profile
  },

  parse: function (response) {
    return response.profiles;
  }
})
