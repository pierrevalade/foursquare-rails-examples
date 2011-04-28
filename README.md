# Foursquare Rails Examples

This is a working Rails application that connects to the Foursquare API using [Quimby](http://github.com/groupme/quimby).
The application is live on Heroku at [http://foursquare-rails-examples.heroku.com](http://foursquare-rails-example.heroku.com)

## Configuration

### Register your application

First, you need to [register your application](https://foursquare.com/oauth).
Be sure to set your callback url to something like `{MY_APP_ROOT_URL}/session/callback` (this could be http://localhost:3000/session/callback).

Then, update `config/application.yml` with your `app_id` and `app_secret`.
    
### Try it!

Launch your server and that's it! You have an application that connected to the [Foursquare v2 API](http://developer.foursquare.com).

### Have a look at the code

Go check `app/controllers/examples_controller.rb`

### Documentation

Documentation of Quimby, the Ruby wrapper used in this example application, is available [here](http://github.com/groupme/quimby).

Documentation of Foursquare API is available [here](http://developer.foursquare.com).

## Fork it!

Want to contribute? Add some examples? That's great! Fork this project and send a pull request :O - I'll add your name to the list of contributors.