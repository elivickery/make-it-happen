Rails.application.routes.draw do

  namespace :api do
    put '/users/update', to: 'users#update'

    resources :users,       only: [:show, :create]
    resources :media_items, only: [:show]

    resources :goals,     only:[:create, :update]


    get '/categories', to: 'categories#index'
    get '/days/count', to: 'days#count'
    get '/days/current', to: 'days#current'
    put '/days/edit',   to: 'days#update'
    get '/goals/achieved', to: 'goals#achieved'
    get '/goals/current', to: 'goals#current'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    get    '/verify',  to: 'sessions#verify_access_token'

    resources :password_resets, only: [:new, :create, :edit, :update]
  end

end
