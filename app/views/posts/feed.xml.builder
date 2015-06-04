atom_feed do |feed|
  feed.title(@title)
  feed.updated(@posts[0].date) if @posts.length > 0

  @posts.each do |post|
    feed.entry(post, :url => post_url(post.slug)) do |entry|
      entry.title post.title
      entry.content (post.content_html).gsub("[---MORE---]", ''), type: "html"
    end
  end
end
