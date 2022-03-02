class PlacesController < ApplicationController
    #TODO
    #-Add edit Action
    #-Add edit html page
    #-Add Update Action
    #-Add destroy Action
    #-Add delete place action

    def index
         @places = Place.all 
    end

    def show
        @place = Place.find(params["id"])
        @posts = @place.posts
    end
#why ID and not something like name of place? b/c of spaces?
    def new
        @place = Place.new 
    end

    def create
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/places"
    end

    def edit
        @place = Place.find(params["id"])
    end

    
end
