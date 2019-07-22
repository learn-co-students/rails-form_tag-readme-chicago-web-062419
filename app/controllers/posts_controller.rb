class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

#   Let's add a `create` action in `PostsController` and have it create a new `Post` object with the values from`params` and then redirect to the index page:
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
