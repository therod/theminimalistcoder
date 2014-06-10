RodrigohaenggiCom::Application.routes.draw do

  # we don't want www
  constraints(:host => /^www\./) do
    get "(*x)" => redirect { |params, request|
      URI.parse(request.url).tap {|url| url.host.sub!('www.', '') }.to_s
    }
  end

  root 'posts#index'

  # Books
  get '/books' => 'pages#books', as: :books

  # ATOM
  get '/feed' => 'posts#feed', :defaults => { :format => 'xml' }

  # Posts (needs to stay at the bottom)
  get '/:slug'  => 'posts#show', as: :post

  # 301s from the old page
  get '/posts/rails-girls-zurich-thoughts/', to: redirect('/railsgirlszurich')
  get 'posts/waking-up-early-10-tips-that-work/', to: redirect('/wake')


end
