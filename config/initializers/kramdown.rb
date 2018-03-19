class Kramdown::Converter::MyHtml < Kramdown::Converter::Html
  def convert_a(el, indent)
    el.attr['target'] = '_blank'
    super
  end
end
