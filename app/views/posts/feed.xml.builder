atom_feed do |feed|
  feed.title(@title)
  feed.updated(@posts[0].date) if @posts.length > 0

  @posts.each do |post|
    feed.entry(post, :url => post_url(post.slug)) do |entry|
      entry.title post.title
      entry.content image_tag(post.image) + post.content_html, type: "html"
    end
  end
end
