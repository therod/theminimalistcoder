module NotifyBasecamp
  BASECAMP_URL = Rails.application.credentials.basecamp_uri.freeze

  class << self
    def send(message)
      system("curl -d content='#{message}' #{BASECAMP_URL}") if post?
    end

    def post?
      Rails.env.production?
    end
  end
end
