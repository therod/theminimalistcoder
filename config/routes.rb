Rails.application.routes.draw do
  constraints(host: /^www\./) do
    get '(*x)' => redirect { |_, request|
      URI.parse(request.url).tap { |url| url.host.sub!('www.', '') }.to_s
    }
  end

  constraints(:host => /theminimalistcoder.com/) do
    match "/(*path)" => redirect {|params, req| "https://rodrigohaenggi.com/#{params[:path]}"},  via: [:get, :post]
  end

  root 'articles#index'
  resources :articles, param: :slug, only: %i[index show]

  get '/sitemapindex.xml', to: 'sitemaps#index', as: :sitemaps
  get '/sitemap.xml', to: 'sitemaps#show', as: :sitemap
end
