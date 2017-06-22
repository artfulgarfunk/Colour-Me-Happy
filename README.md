# Colour Me Happy

## A custom image search app made as tech test. It allows users to select from several colours and display the top image search results for that colour and a random keyword. e.g. 'Blue' & 'Happiness'

# Design
I chose Ruby on Rails for this project as I had some familiarity with it and it has strong conventions and structure by default.
I deliberately kept the design very minimal, for example with just one model, two controllers and two views.

When a user selects a colour on the home page, the Welcome Controller generates a random noun from the given array and this is passed to the Results Controller through the params hash. This data is saved as an instance variable as there is no need for persisent storage in this app, then passed to a new Result object.

The Results Index displays all five images - the first of which is clickable to go the image URL -, a button to go back to Home to search again, and the list of previous searches.
The Result instance is used to generate the list of previous searches - which can all be searched again.

There is a lot of further development on this project, particularly the styling which is minimal.


## Requirements
- The user must be able to select the following colours: Red, Pink, Orange, Yellow, Green,
Blue, and Purple
- The search must use a random one of the following search terms and the selected colour as a filter: man, mountain, state, ocean, country, building, cat, airline, wealth,
happiness, pride, fear, religion, bird, book, phone, rice, snow, water
- The colours must be presented as squares for the user to select
- The top 5 search result images returned need to be displayed
- The top search result needs to be able to be clicked by the user & will take the user to the image’s url
- Show the list of previous searches in a time sorted list with most recent at the top
- Show the Date, time, Noun, colour and http response ms displayed for previous searches
- Enable re-running previous searches

# Built With
- Ruby on Rails
- RestClient
- Pixabay API
- Bootstrap for Rails
- Required gems for ResClient - http-cookies, netrc, mime-types

# Testing
Run rspec to run the test suite

# Demo
[Heroku](https://stark-atoll-86537.herokuapp.com)
