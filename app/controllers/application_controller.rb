class ApplicationController < ActionController::Base
  before_action :set_metadata

  private

  def set_metadata
    @description = t('home.description')
    @og_image = "theminimalistcoder-kimono-mascott-og.jpg"
  end
end
