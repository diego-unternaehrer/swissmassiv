Rails.application.routes.draw do
  get "partners/:id/edit", to: "partners#edit",  as: :edit_partner
  patch "partners/:id", to: "partners#update", as: :partner
  get "events/:id/edit", to: "events#edit",  as: :edit_event
  patch "events/:id", to: "events#update", as: :event

  scope '(:locale)', locale: /de|en|fr|it/ do
    root to: 'pages#home'

    get 'about',        to: 'pages#about',        as: :about
    get 'skis',         to: 'pages#skis',         as: :skis
    get 'allrounder',   to: 'pages#allrounder',   as: :allrounder
    get 'mieten',       to: 'pages#mieten',       as: :mieten
    get 'service',      to: 'pages#service',      as: :service
    get 'contact',      to: 'contacts#new',       as: :contact

    get 'personalised', to: 'personaliseds#index', as: :personalised
    resources :personaliseds, except: [:index, :show]
    resources :partners, except: [:edit, :update, :show]
    resources :events, except: [:edit, :update, :show]
    resources :contacts, only: [:create]
    mount Spree::Core::Engine, at: '/'
  end

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"

end
