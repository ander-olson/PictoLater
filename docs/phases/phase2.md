# Phase 2: JSON API and First Backbone Views

## Rails
### Models
Photos

### Controllers
* Api::ProfilesController (create, destroy, index, show)
* Api::PhotosController (create, new, destroy, show)

### Views
* profile/show.json.jbuilder
* photos/index.json.jbuilder

## Backbone
### Models
* Profile
* Photo

### Collections
* Photos

### Views
* ProfileShow (composite view, contains PhotoIndex subview)
* PhotoIndex

## Gems/Libraries
* Filepicker
* Aviary
