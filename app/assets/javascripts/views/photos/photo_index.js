Pictolater.Views.PhotoIndex = Backbone.CompositeView.extend({
  template: JST["photos/index"],

  initialize: function () {
    this.listenTo(this.collection, "sync add", this.render)
  },

  render: function () {
    this.$el.html(this.template())
    var view = this;
    this.collection.each(function (photo) {
      var photoView = new Pictolater.Views.PhotoIndexItem({
        model: photo
      });

      var commentsView = new Pictolater.Views.CommentsIndex({
        collection: photo.comments()
      });

      view.addSubview('.thumbnail-feed', photoView);
    })
    _.throttle(this.listenForScroll(), 300);
    return this;
  },

  listenForScroll: function () {
    var throttleCallback = _.throttle(this.pagination.bind(this), 800);
    var collection = this;

    $( window ).scroll(function () {
      if ($(window).scrollTop() > $(document).height() - $(window).height() - 100) {
        if (collection.collection.page_number < collection.collection.total_pages) {
          throttleCallback();
        }
      }
    })
  },

  pagination: function () {
    var collection = this;
    this.collection.fetch({
      remove: false,
      data: {  page: collection.collection.page_number + 1 }
    })
    console.log("throttled")
  }
})
