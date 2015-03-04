class PostsController < ApplicationController
  def index
    @latest_post = Post.first
    @posts = Post.all.drop(1)
  end

  def show
    @post = Post.where(slug: params[:slug]).first
  end

  def feed
    @title = "theminimalistcoder"
    @posts = Post.all

    respond_to do |format|
      format.xml
    end
  end

end
