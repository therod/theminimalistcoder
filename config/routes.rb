Rails.application.routes.draw do
  constraints(:host => /^www\./) do
    get "(*x)" => redirect { |params, request|
      URI.parse(request.url).tap {|url| url.host.sub!('www.', '') }.to_s
    }
  end

  root 'pages#home'

  resources :articles, param: :slug, only: [:index, :show]
  resources :pages, param: :slug, only: [:home, :show]
  resources :commonplaces, param: :slug, only: [:index, :show], path: 'commonplace'

  get '/writing', to: redirect('/articles')
  get '/:slug', to: redirect('/articles/%{slug}')
end
