Rails.application.routes.draw do
 
  get 'sessions/new'
  get 'users/new'
 get '/help', to: 'static_pages#help'
 get '/about', to: 'static_pages#about'
 get '/contact', to: 'static_pages#contact'
 get '/signup', to: 'users#new'
 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/logout', to: 'sessions#destroy'
 resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
