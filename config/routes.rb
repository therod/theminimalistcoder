RodrigohaenggiCom::Application.routes.draw do

  root 'posts#index'

  # Static Pages
  get '/archives'  => 'pages#archives'

  # Posts
  get '/:slug'  => 'posts#show'

  # 301s from the old page
  get '/posts/rails-girls-zurich-thoughts/', to: redirect('/railsgirlszurich')
  get 'posts/waking-up-early-10-tips-that-work/', to: redirect('/wake')

end
