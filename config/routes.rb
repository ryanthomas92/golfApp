Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  # get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  # post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  # delete '/users/:id', to: 'users#destroy'

  get '/courses', to: 'courses#index'
  get '/courses/new', to: 'courses#new', as: 'new_course'
  post '/courses', to: 'courses#create'
  get '/courses/:id', to: 'courses#show', as: 'course'
  delete '/courses/:id', to: 'courses#destroy'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

end
