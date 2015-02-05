Pictolater.Views.ProfileShow = Backbone.View.extend({
  template: JST["profiles/show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.photos(), "reset", this.render);
  },

  events: {
    "click a": "backToIndex"
  },

  render: function () {
    var profileContent = this.template({ profile: this.model });
    this.$el.html(profileContent);
    debugger
    return this;
  },

  backToIndex: function (event) {
    event.preventDefault();
    Backbone.history.navigate('', { trigger: true })
  }
})
