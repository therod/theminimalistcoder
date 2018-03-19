class PagesController < ApplicationController
  def home
  end

  def show
    @page = Page.find_by(params[:slug])
  end
end
