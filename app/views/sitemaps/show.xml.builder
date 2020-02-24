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
      xml.loc articles_url(article.slug)
      xml.priority(0.9)
    end
  end

  # Articles Index
  xml.url do
    xml.loc articles_url
    xml.priority(0.8)
  end

  # Talks
  xml.url do
    xml.loc talks_url
    xml.priority(0.8)
  end

  # Influences
  # xml.url do
  #   xml.loc influences_url
  #   xml.priority(0.9)
  # end

  # Books
  xml.url do
    xml.loc books_url
    xml.priority(0.8)
  end

  # Contact
  xml.url do
    xml.loc contact_url
    xml.priority(0.8)
  end

end
