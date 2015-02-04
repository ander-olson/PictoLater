Pictolater.Views.FilePicker = Backbone.View.extend({
  template: JST["filepicker/choose"],

  events: {
    'click .glyphicon-camera': "uploadPhoto"
  },

  uploadPhoto: function() {
    var picker = this;
    filepicker.pick(
      {mimetype:"image/*"},
      function(Blob){
        var newPhoto = new Pictolater.Models.Photo({
          url: Blob.url,
          owner_id: 8
        });
        picker.collection.create(newPhoto)
    });
  },

  render: function () {
    this.$el.html(this.template());
    return this;
  }
})
