Rails.application.routes.draw do

  root to: 'static_pages#home'
  get '/new', to: 'users#new'
  post '/new', to: 'users#new_post'
  get '/error', to: 'users#error', as: 'error'
  get '/users/:id', to: 'users#show', as: 'show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
