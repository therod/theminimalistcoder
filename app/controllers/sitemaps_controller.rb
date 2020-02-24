class SitemapsController < ApplicationController
  def index
  end

  def show
    @articles = Article.all
  end
end
