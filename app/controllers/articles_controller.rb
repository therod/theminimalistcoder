class ArticlesController < ApplicationController
  def index
    @title = "Articles"
    @articles = Article.all
  end

  def show
    @article = Article.find_by(params[:slug])

    @title = @article.title
    @description = @article.description
  end
end
