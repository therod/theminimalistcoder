#encoding: UTF-8
xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "The Minimalist Coder – a programmers journey into minimalism"
    xml.author "Rodrigo Haenggi"
    xml.description "A place where I share my thoughts on life, programming and living a minimalist lifestyle."
    xml.link "http://theminimalistcoder.com"
    xml.language "en"

    for post in @posts
      xml.item do
        xml.title post.title
        xml.author "Rodrigo Haenggi"
        xml.pubDate post.date.to_s(:rfc822)
        xml.link post_url(post.slug)
        xml.guid post.slug

        text = post.content_html.gsub("[---MORE---]", '')

        if post.image.present?
          image_url     = post.image
          image_caption = post.description || "A place where I share my thoughts on life, programming and living a minimalist lifestyle."
          image_tag = "<p><img src='#{image_url}' alt='#{image_caption}' title='#{image_caption}' /></p>"
          text = image_tag + text
        end

        text += "<p><a href='#{post_url(post.slug)}'>Continue reading...</a><p>"

        xml.description text

      end
    end
  end
end
