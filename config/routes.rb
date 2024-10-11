Rails.application.routes.draw do
  root 'trails#index'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  resources :trails do
    resources :comments, only: [:create, :destroy]
  end
end