class PagesController < ApplicationController
  def archives
    @posts = Post.all
  end
end
