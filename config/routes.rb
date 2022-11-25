Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "your_listings", to: "pages#your_listings"
  get "your_bids", to: "pages#your_bids"
  # get '/user/:id', to: 'bids#new'
  resources :bids, only: [:index, :update, :show, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
  resources :listings, only: [:index, :new, :create, :show] do
    resources :bids, only: [:new, :create]
  end
end
