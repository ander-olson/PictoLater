# Pictolater

* [Heroku App](http://pictolater.herokuapp.com)

## Minimum Viable Product
Pictolater is a clone of Instagram built on Rails and Backbone. Users can:

- [x] Create accounts
- [X] Create sessions (log in)
- [X] View profiles
- [X] Support for multiple open sessions
- [X] Upload photos to profile
- [X] View photos
- [ ] Comment on feed photos
- [ ] Subscribe to users
- [ ] View a feed of subscribed feed photos
- [ ] Choose a photo to use as their profile or cover photo


## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Basic Profiles (Completed)
I implemented user authentication in Rails based on the practices learned at App Academy. Users can log in, create accounts, and basic profiles are visible.

[Details][phase-one]

### Phase 2: JSON API and First Backbone Views (Re-Completed)
I switched from Filepicker to Cloudinary since Cloudinary offers more services and they are easier for user interface.

I added API routes to serve profile and relevant photo data as JSON, then added Backbone models and collections to fetch data from these routes. Users can see an index of all photos, photos uploaded by specific users, photo show pages, and a list of all users.

[Details][phase-two]

### Phase 3: Viewing and Commenting on Photos (~2 days)
I will add an API route to serve comment data as JSON, then add Backbone models and collections that fetch data from this routes. I will create a PhotoShow view via Backbone in order to see a photo in more detail than the profile page where users can also add/delete and view comments.

[Details][phase-three]

### Phase 4: User Feeds (~1.5 days)
I'll start by adding a `feed` route that uses the `current_user`'s
`subscribed_profiles` association to serve a list of profile photos ordered
chronologically. On the Backbone side, I'll make a `FeedPhotos` collection that
fetches from the new route, then create a `FeedShow` view that uses the new
collection. Ultimately, this will be the page users see after logging in.

[Details][phase-four]

### Phase 5: Choose a Cover Photo and Profile Photo for Profile View (~1 day)
I'll update the composite ProfileShow View to include a profile photo and a cover photo. I'll need to add Backbone functionality so that users can choose which of their photos they want to choose. I'll update the PhotoShow View so that a user can choose can select to use their own photo for a cover or profile photo.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] Add chosen profile photo thumbnails to FeedShow
- [ ] Users can manipulate their own photos using filters
- [ ] Users can create their own subfeeds to organize subs by topic
- [ ] 'Like' button and counter for `PhotoShow` view
- [ ] Tag photos
- [ ] Search for photos by tag
- [ ] Pagination of the `FeedShow` and `ProfileShow` views

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
