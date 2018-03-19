class PagesController < ApplicationController
  def home
    @articles = Article.latest
  end
end
