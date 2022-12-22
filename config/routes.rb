Rails.application.routes.draw do
  devise_for :users
  resources :payments
  resources :categories
  resources :users

  # resources :categories do
  #   resources :payments
  # end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 get 'splash/index'

  devise_scope :user do
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end

    unauthenticated do
      root 'splash#index', as: :unauthenticated_root
    end
 end
end
