Rails.application.routes.draw do
  Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show]
  root 'users#index'
end
