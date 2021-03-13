Rails.application.routes.draw do
  constraints(:host => /theminimalistcoder.com/) do
    match "/(*path)" => redirect {|params, req| "https://rodrigohaenggi.com/#{params[:path]}"},  via: [:get, :post]
  end

  match '(*any)', to: redirect(subdomain: ''), via: :all, constraints: {subdomain: 'www'}

  root 'articles#index'
  resources :articles, param: :slug, only: %i[index show]

  resources :subscribers, param: :token, only: %i[create show update destroy]

  get '/sitemapindex.xml', to: 'sitemaps#index', as: :sitemaps
  get '/sitemap.xml', to: 'sitemaps#show', as: :sitemap
end
