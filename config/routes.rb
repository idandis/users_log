Rails.application.routes.draw do
  devise_for :users
  root 'main#home'
  
  get 'home/dashboard', to: 'main#dashboard'  
  get 'time_log/:id', to:"time_log#show"

  resources :users do
    resources :time_logs
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
