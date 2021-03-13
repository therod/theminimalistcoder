class ApplicationController < ActionController::Base
  before_action :new_subscriber

  private

  def new_subscriber
    @subscriber = Subscriber.new
  end
end
