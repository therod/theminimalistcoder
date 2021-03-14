class Rack::Attack
  throttle('req/ip', limit: 300, period: 5.minutes) do |req|
    req.ip
  end

  blocklist("block wordpress") do |req|
    req.path.include?("/wp-content")
  end
end
