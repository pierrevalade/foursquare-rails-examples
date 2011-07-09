class ExamplesController < ApplicationController
  
  before_filter :require_user
  
  def index
    # list all the examples
    
  end
  
  def user
  end
  
  def checkins
  end
  
  def friends
  end
  
  def venues_search
    if params[:name]
      # venues is a hash, with keys that represents different type of results
      # see "Response Fields" in this page: https://developer.foursquare.com/docs/venues/search.html
      # for more details
      @venues = foursquare.venues.search(:query => params[:name], :ll => "48.857,2.349")
    end
  end
  
  def venue_details
    # default venue is the "Tour Eiffel"
    @venue_id = params[:venue_id] || "185194"
    @venue = foursquare.venues.find(@venue_id)
  end
  
end