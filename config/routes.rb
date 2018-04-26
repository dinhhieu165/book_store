Rails.application.routes.draw do
  get 'account_activation/edit'

  post '/rate' => 'rater#create', :as => 'rate'
  root to: "pages#home"
  get "password_reset/new"
  get "password_reset/edit"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :users
  resources :books
  resources :categories
  resources :likes
  namespace :admin do
    resources :books
    resources :categories
  end
  get "/search", to: "searchs#search"
end
