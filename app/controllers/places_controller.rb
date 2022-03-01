class PlacesController < ApplicationController
    
    # <% places = ["Portugal","Norway", "England"] %>
    
    def new
        @place = Place.new        
    end

    def create
        @place = Place.new(params["places"])
        @place.save
        redirect_to "/places"
    end
end
