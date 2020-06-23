Rails.application.routes.draw do
  scope '(:locale)', locale: /de|en|fr|it/ do
    root to: 'pages#home'

    get 'about',    to: 'pages#about',     as: :about
    get 'contact',  to: 'contacts#new',    as: :contact

    resources :partners
    resources :events
    resources :contacts, only: [:create]
  end

  filter :locale

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
end
