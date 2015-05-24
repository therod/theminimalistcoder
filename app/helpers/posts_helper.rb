module PostsHelper

  def next_post
  end

  def formatted_date(date)
    if date.year == Date.today.year
      date.strftime("Written on %B %d")
    else
      date.strftime("Written on %B %d %Y")
    end
  end

end
