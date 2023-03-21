Rails.application.routes.draw do
  Rails.application.routes.draw do
  devise_for :users, controllers: {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    resource :lovetree
  end
  get 'users/:id',to:'lovetree#show'
  get 'users/:id/lovetree' ,to: 'lovetree#show'
  get '/story', to: 'pages#show'
  get '/contact', to:'pages#contact'
  get 'users/:id/calendar', to:'calendar#show'
  get 'users/:id/setting', to:'users#setting'
  root "users#index"
end
