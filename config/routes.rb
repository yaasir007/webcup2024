Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index
  resources :products
  resources :baskets, only: [:show]
  resources :tables, only: [:index]
  resources :reservations, only: [:create, :destroy]
  resources :orders, only: [:show, :create, :index]
  get 'orders/:id/mark_as_delivered', to: 'orders#mark_as_delivered', as: 'mark_as_delivered'

  resources :basket_items, only: [:create, :destroy]

  get 'dashboard/my_reservations', to: 'dashboard#my_reservations', as: 'my_reservations'
  get 'dashboard/my_orders', to: 'dashboard#my_orders', as: 'my_orders'
  get 'dashboard/my_products', to: 'dashboard#my_products', as: 'my_products'
  get 'dashboard/my_tables', to: 'dashboard#my_tables', as: 'my_tables'
  get 'dashboard/my_delivery_route', to: 'dashboard#my_delivery_route', as: 'my_delivery_route'

end
