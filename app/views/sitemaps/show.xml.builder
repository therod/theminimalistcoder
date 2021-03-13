xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9", "xmlns:xhtml" => "http://www.w3.org/1999/xhtml" do
  # Root
  xml.url do
    xml.loc root_url
    xml.priority(1.0)
  end

  # Articles
  @articles.each do |article|
    xml.url do
      xml.loc article_url(article.slug)
      xml.priority(1.0)
    end
  end
end
