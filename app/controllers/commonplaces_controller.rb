class CommonplacesController < ApplicationController

  def index
    @commonplaces = Commonplace.all
  end

  def show
    @commonplace = Commonplace.find_by(params[:slug])
  end

end
