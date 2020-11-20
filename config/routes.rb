Rails.application.routes.draw do
  scope '(:locale)', locale: /de|en|fr|it/ do
    root to: 'pages#home'

    get 'about',        to: 'pages#about',        as: :about
    get 'skis',         to: 'pages#skis',         as: :skis
    get 'allrounder',   to: 'pages#allrounder',   as: :allrounder
    get 'mieten',       to: 'pages#mieten',       as: :mieten
    get 'service',      to: 'pages#service',      as: :service
    get 'contact',      to: 'contacts#new',       as: :contact
    get 'schreiner',    to: 'pages#schreiner',    as: :schreiner

    get 'personalised', to: 'personaliseds#index', as: :personalised
    delete 'personalised', to: 'personaliseds#destroy', as: :delete_personalised
    resources :personaliseds, only: [:new, :create]
    resources :partners, except: [:show]
    resources :events, except: [:show]
    resources :contacts, only: [:create]
    mount Spree::Core::Engine, at: '/'
  end

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"

end
