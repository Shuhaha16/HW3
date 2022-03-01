class PlacesController < ApplicationController
    
    def index
         @places = Place.all 
    end

    def show
        @places = Place.find(params["id"])
    end

    def new
        @places = Place.new 
               
    end

    def create
        @places = Place.new(params["place"])
        @places.save
        redirect_to "/places"
    end
end
