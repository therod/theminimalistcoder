class PagesController < ApplicationController
  def home
    @title = 'Rodrigo Hänggi – Researcher, designer, software writer, mover, hobby philosopher and lifelong learner.'
  end

  def talks
    @title = 'Rodrigo Hänggi – Talks, podcasts, interviews, videos'
  end

  def books
    @title = 'Rodrigo Hänggi - Recommended books '
  end

  def influences
    @title = 'Rodrigo Hänggi - People that inspire me'
  end

  def contact
    @title = 'Rodrigo Hänggi - Get in touch'
  end
end
