class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Kaminari.paginate_array(Post.all).page(params[:page]).per(5)
  end

  def show
    @post = Post.where(slug: params[:slug]).first
    @description = @post.description
    @og_image = @post.image
    @title = @post.title
    @description = @post.description
  end

  def feed
    @posts = Post.all
    respond_to do |format|
      format.rss { render :layout => false }
    end
  end

end
