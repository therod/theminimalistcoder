class ArticlesController < ApplicationController
  def index
    @title = 'Rodrigo Hänggi – Articles on research, design, coding, movement and philosophy'
    @articles = Article.all

    respond_to do |format|
      format.html
      format.rss { render layout: false }
    end

  end

  def show
    @article = Article.find_by(params[:slug])

    @title = @article.title
    @description = @article.description
  end
end
