class ApplicationController < ActionController::Base
  before_action :set_metadata

  private

  def set_metadata
    @description = "I'm a designer, software writer, and hobby philosopher from Switzerland. This is the space where I share my thoughts and research."
    @og_image = "theminimalistcoder-kimono-mascott-og.jpg"
  end
end
