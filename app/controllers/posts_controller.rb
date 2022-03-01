class PostsController < ApplicationController
    def new
        @post = Post.new   
        @post.place_id = params["place_id"]
        #is the place_id correct? or place.id
    end
    def index
        @post = Post.all 
   end

   def create
    @post = Post.new(params["post"])
    @post.save
    redirect_to "/places"
    #Change to places/id?
end

end
