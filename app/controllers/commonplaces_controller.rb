class CommonplacesController < ApplicationController

  def index
    @commonplaces = Commonplace.all.sort_by { |c| c.title }
  end

  def show
    @commonplace = Commonplace.find_by(params[:slug])
  end

end
