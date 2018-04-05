module ApplicationHelper
  def fa_icon(icon, options={})
    content_tag :i, nil, class: "fa fa-icon fa-#{icon} #{options[:class]}", style: "#{options[:style]}"
  end

  def formatted_date(date)
    date.strftime("%d. %b, %Y")
  end

  def page_title(title)
    if title
      "#{title} | the minimalist coder"
    else
      "the minimalist coder"
    end
  end

  def markdown(body)
    Kramdown::Document.new(body).to_my_html.html_safe
  end
end
