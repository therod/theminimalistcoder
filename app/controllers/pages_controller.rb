class PagesController < ApplicationController
  def home
    @articles = Article.latest
  end

  def contact
  end
end
