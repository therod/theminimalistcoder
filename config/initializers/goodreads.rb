Goodreads.configure(
  :api_key => ENV['GOODREADS_API_KEY'],
  :api_secret => ENV['GOODREADS_API_SECRET']
)

user_id = 28078066

client = Goodreads.new

$read = []
client.shelf(user_id, "read").books.each do |item|
  $read << item.book
end

$current = []
client.shelf(user_id, "currently-reading").books.each do |item|
  $current << item.book
end
