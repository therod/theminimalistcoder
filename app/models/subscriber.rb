class Subscriber < ApplicationRecord
  def generate_token
    begin
      self.token = SecureRandom.alphanumeric(24)
    end while self.class.exists?(token: self.token)
    token
  end
end
