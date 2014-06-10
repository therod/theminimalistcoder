class PagesController < ApplicationController
  def books
    @read = $read
    @current = $current
  end
end
