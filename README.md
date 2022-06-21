# Project 1 - Flixter

Flixter is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 15 hours spent in total

## User Stories

The following **required** functionality is complete:

- [x] User sees an app icon on the home screen and a styled launch screen.
- [x] User can view a list of movies currently playing in theaters from The Movie Database.
- [x] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [x] User sees a loading state while waiting for the movies API.
- [x] User can pull to refresh the movie list.
- [x] User sees an error message when there's a networking error.
- [x] User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.



Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):
1.Looking to find why the final two methods in MovieCollectionViewController.m file are not being read because it is preventing my Collection View Layout to not present the movie images.
2.I would also like to implement a search bar because that is a feature I look for when using apps

## Video Walkthrough

Here's a walkthrough of implemented user stories:
https://drive.google.com/file/d/1F6RZSXhsSd4Q3VR1EVGlybwsI8FGjm3W/view?usp=sharing


## Notes

My collection view layout was not working, but it was because my reference was weak instead of strong

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library
