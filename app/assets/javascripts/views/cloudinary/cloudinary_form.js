Pictolater.Views.CloudinaryForm = Backbone.View.extend({
  template: JST["cloudinary/choose"],

  initialize: function () {
    this.timeout = undefined;
  },

  events: {
    'click .photopick': 'cloudinaryWidget',
    'dragenter .photopick': 'maybeUploadPhoto',
    'dragleave .photopick': 'cancelUpload'
  },

  cloudinaryWidget: function () {
    var view = this;
    cloudinary.openUploadWidget({
      cloud_name: "dcd7no2gu",
      upload_preset: "w6klo3jj"
    }, function (error, results) {
      view.cloudinaryDataToModel(error, results)
    });
  },

  cloudinaryDataToModel: function (error, results) {
    var view = this;
    results.forEach( function (result) {
      var photoURL = result.url;
      var cloudinaryID = result.public_id;
      var newPhoto = new Pictolater.Models.Photo({
        url: photoURL,
        cloudinary_id: cloudinaryID,
        owner_id: currentUser
      });
      view.collection.create(newPhoto, { wait: true })
    })
  },

  maybeUploadPhoto: function () {
    var view = this;
    this.timeout = setTimeout(function () {
      view.cloudinaryWidget();
    }, 400)
  },

  cancelUpload: function () {
    clearTimeout(this.timeout);
  },

  render: function () {
    this.$el.html(this.template());
    return this;
  }
})
