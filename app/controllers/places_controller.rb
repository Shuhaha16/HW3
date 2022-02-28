class PlacesController < ApplicationController
    
    
    
    def new
        @post = Post.new        
    end

    def create
        @post = Post.new(params["posts"])
        @post.save
        redirect_to "/places"
    end
end
