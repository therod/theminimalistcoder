class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def show
    @page = Page.find_by(params[:slug])
    @title = @page.title
  end
end
