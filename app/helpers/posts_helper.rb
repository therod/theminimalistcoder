module PostsHelper

  def next_post
  end

  def formatted_date(date)
    date.strftime("Written on %A, %d. %B %Y")
  end

end
