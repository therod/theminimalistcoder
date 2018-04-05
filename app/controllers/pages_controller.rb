class PagesController < ApplicationController
  def home
    @title = "Home"
    @research_topics = Commonplace.latest
  end

  def show
    @page = Page.find_by(params[:slug])
    @title = @page.title
  end
end
