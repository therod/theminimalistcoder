class ApplicationController < ActionController::Base
  before_action :set_meta

  private

  def set_meta
    @og_image = 'minimalist-maze-og.jpg'
    @description = t('home.subtitle_b')
  end
end
