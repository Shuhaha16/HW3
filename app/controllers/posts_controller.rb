class PostsController < ApplicationController
    #TODO
    #-Add edit function
    #-Add edit HTML
    #-Add Show action
   
    def index
        @posts = Post.all 
    end
        
    def new
        @post = Post.new 
        @place = Place.find(params["place_id"])
        @post.place_id = @place.id
    end

    def show
        @post = Post.find(params["id"])
    end

   def create
        @post = Post.new(params["post"])
        @post.save
     redirect_to "/places/#{@post.place.id}"
    end
    
    def edit
        @post = Post.find(params["id"])
    end

end    
# def show
#     @contact = Contact.find(params["id"])
#   end

#   def new
#     @contact = Contact.new
#     @company = Company.find(params["company_id"])
#     @contact.company_id = @company.id
#   end

#   def create
#     @contact = Contact.new(params["contact"])
#     @contact.save
#     redirect_to "/companies/#{@contact.company.id}"
#   end

# end