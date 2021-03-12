class ArticlesController < ApplicationController
  def index
    @title = 'Rodrigo Hänggi'
    @articles = Article.all

    respond_to do |format|
      format.html
      format.atom
    end
  end

  def show
    @article = Article.find_by(params[:slug])

    @title = @article.title
    @description = @article.description
  end
end
