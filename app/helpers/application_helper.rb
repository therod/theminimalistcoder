module ApplicationHelper
  def original_url
    request.url
  end

  def formatted_date(date)
    date.strftime("%B %d, %Y")
  end

  def markdown(body)
    Kramdown::Document.new(body).to_my_html.html_safe
  end
end
