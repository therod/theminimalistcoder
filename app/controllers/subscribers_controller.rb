class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.find_or_initialize_by(email: subscriber_params[:email])

    if @subscriber.new_record?
      @subscriber.generate_token
      @subscriber.save
    end

    redirect_to subscriber_path(@subscriber.token)
  end

  def show
    @subscriber = Subscriber.find_by(token: params[:token])
    redirect_to root_url if @subscriber.nil?
  end

  def confirm
    @subscriber = Subscriber.find_by(token: params[:subscriber_token])
    @subscriber.update(subscribed: true)

    render 'subscribers/show.html.erb'
  end

  def unsubscribe
    @subscriber = Subscriber.find_by(token: params[:subscriber_token])
    @subscriber.update(subscribed: false)
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
