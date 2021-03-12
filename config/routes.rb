Rails.application.routes.draw do
  constraints(host: /^www\./) do
    get '(*x)' => redirect { |_, request|
      URI.parse(request.url).tap { |url| url.host.sub!('www.', '') }.to_s
    }
  end

  root 'articles#index'
  resources :articles, param: :slug, only: %i[index show]
  get '/books', to: 'pages#books', as: :books
  get '/contact', to: 'pages#contact', as: :contact

  get '/sitemapindex.xml', to: 'sitemaps#index', as: :sitemaps
  get '/sitemap.xml', to: 'sitemaps#show', as: :sitemap

  # get '/feed.atom', to: 'pages#feed', as: :feed, format: j

  # Redirects from the old page TODO: Use Rack Rewrite
  get '/pages/talks', to: redirect('/talks'), status: 301
  get '/articles/biggest-productivity-hack', to: redirect('/articles/ketogenic-diet'), status: 301
  get '/commonplace', to: redirect('/articles'), status: 301
  get '/commonplace/jobs-to-be-done', to: redirect('/articles/jobs-to-be-done'), status: 301
  get '/commonplace/movement', to: redirect('/articles/movement'), status: 301
  get '/commonplace/on-designing-and-writing-software', to: redirect('/articles/on-designing-and-writing-software'), status: 301
end
