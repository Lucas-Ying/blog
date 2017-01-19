class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @posts = Post.order("created_at desc").limit(4).offset(1)
  end

end
