module ApplicationHelper
  def fa_icon(icon, options={})
    content_tag :i, nil, class: "fa fa-icon fa-#{icon} #{options[:class]}", style: "#{options[:style]}"
  end
  def formatted_date(date)
    date.strftime("%d. %b, %Y")
  end
end
