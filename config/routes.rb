RodrigohaenggiCom::Application.routes.draw do

  root 'posts#index'

  # Static Pages
  get '/archives'  => 'pages#archives'

  # ATOM
  get '/feed' => 'posts#feed', :defaults => { :format => 'xml' }

  # Posts
  get '/:slug'  => 'posts#show', as: :post

  # 301s from the old page
  get '/posts/rails-girls-zurich-thoughts/', to: redirect('/railsgirlszurich')
  get 'posts/waking-up-early-10-tips-that-work/', to: redirect('/wake')

end
