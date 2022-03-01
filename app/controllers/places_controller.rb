class PlacesController < ApplicationController
    
    def index
         @places = Place.all 
    end

    def show
        @place = Place.find(params["id"])
    end
#why ID and not something like name?
    def new
        @place = Place.new 
    end

    def create
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/places"
    end
end
