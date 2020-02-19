module ApplicationHelper
  def page_title(title)
    if title
      title
    else
      'Rodrigo Hänggi: theminimalistcoder'
    end
  end

  def formatted_date(date)
    date.strftime("%-d. %B %Y")
  end

  def markdown(body)
    Kramdown::Document.new(body).to_my_html.html_safe
  end
end
