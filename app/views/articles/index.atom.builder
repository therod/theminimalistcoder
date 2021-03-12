xml.instruct! :xml, version: "1.0"
xml.feed("xml:lang" => "en-US", "xmlns" => "http://www.w3.org/2005/Atom" ) do
  xml.id "tag:rodrigohaenggi.com,2005:/articles"
  xml.link rel: "alternate", type: "text/html", href: articles_url
  xml.link rel: "self", type: "application/atom+xml", href: articles_url(format: :atom)
  xml.title "Rodrigo Hänggi"
  xml.updated @articles.first.created_at

  @articles.each do |article|
    xml.entry do
      xml.id "tag:rodrigohaenggi.com,2005:articles:#{article.id}"
      xml.published article.created_at
      xml.updated article.updated_at
      xml.link article_url(article.slug)
      xml.title article.title
      xml.content(type: "html") do
        xml.text! article.content_html
        xml.text! "\n"
      end
      xml.author do
        xml.name "Rodrigo Hänggi"
        xml.email "rodrigo@codegestalt.com"
      end
    end
  end
end
