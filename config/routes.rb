Rails.application.routes.draw do
  constraints(host: /^www\./) do
    get '(*x)' => redirect { |_, request|
      URI.parse(request.url).tap { |url| url.host.sub!('www.', '') }.to_s
    }
  end

  root 'pages#home'

  get '/talks', to: 'pages#talks', as: :talks
  # get '/influences', to: 'pages#influences', as: :influences
  get '/books', to: 'pages#books', as: :books
  get '/contact', to: 'pages#contact', as: :contact

  # Redirects from the old page
  get '/pages/talks', to: redirect('/talks'), status: 301
  get '/articles/biggest-productivity-hack', to: redirect('/articles/ketogenic-diet'), status: 301
  get '/commonplace', to: redirect('/articles'), status: 301
  get '/commonplace/jobs-to-be-done', to: redirect('/articles/jobs-to-be-done'), status: 301
  get '/commonplace/movement', to: redirect('/articles/movement'), status: 301
  get '/commonplace/on-designing-and-writing-software', to: redirect('/articles/on-designing-and-writing-software'), status: 301

  resources :articles, param: :slug, only: %i[index show]

  get '/sitemapindex.xml', to: 'sitemaps#index', as: :sitemaps
  get '/sitemap.xml', to: 'sitemaps#show', as: :sitemap
end
