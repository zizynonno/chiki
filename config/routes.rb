Rails.application.routes.draw do
  # get 'friends/new'
  # get 'friends/edit'
  # get 'friends/index'
  # get 'friends/show'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'pages#index'
  get 'pages/show'
  resources :friends
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
