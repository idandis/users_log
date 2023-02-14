Rails.application.routes.draw do
  devise_for :users
  root 'main#home'
  post '/time_log/new', to: 'time_log#create'
  delete '/time_log/:id/destroy', to: 'time_log#destroy'
  get '/time_log/:id/edit', to: 'time_log#edit'
  get 'home/dashboard', to: 'main#dashboard'  
  get 'home/stimulus', to: 'main#stimulus'  
  #get 'time_log/:id', to:"time_log#show"
  resources :time_log
 
  resources :users do
    resources :time_logs
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
