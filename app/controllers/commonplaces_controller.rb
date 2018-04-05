class CommonplacesController < ApplicationController
  before_action :set_metadata

  def index
    @commonplaces = Commonplace.all.sort_by { |c| c.title }

    @title = "Commonplace"
    @description = "Commonplace books (or commonplaces) are a way to compile knowledge, usually by writing information into books. They are used by readers, writers, students, and scholars as an aid for remembering useful concepts or facts they have learned. This is the place where I distill everything I read and learn into various topics."
  end

  def show
    @commonplace = Commonplace.find_by(params[:slug])

    @title = @commonplace.title
    @description = @commonplace.description
    @og_image = @commonplace.image_url
  end

end
