Pictolater.Views.ProfilesIndex = Backbone.View.extend({
  template: JST["profiles/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "reset", this.render)
  },

  render: function () {
    var profilesContent = this.template({ profiles: this.collection });
    this.$el.html(profilesContent);
    return this;
  }
})
