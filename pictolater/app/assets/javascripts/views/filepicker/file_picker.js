Pictolater.Views.FilePicker = Backbone.View.extend({
  template: JST["filepicker/choose"],

  initialize: function () {
    this.timeout = undefined;
  },

  events: {
    'click .glyphicon-camera': "uploadPhoto",
    'dragenter .glyphicon-camera': "maybeUploadPhoto",
    'dragleave .glyphicon-camera': "cancelUpload"
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

  maybeUploadPhoto: function () {
    var picker = this;
    this.timeout = setTimeout(function () {
      picker.uploadPhoto();
    }, 800)
  },

  cancelUpload: function () {
    clearTimeout(this.timeout);
  },

  render: function () {
    this.$el.html(this.template());
    return this;
  }
})
