Rack::Attack.blocklist("block wordpress") do |request|
  request.path.start_with?("/wp-content")
end
