Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :requests, only: [:index, :show, :update]
  namespace :rider do
    resources :requests, only: [:index]
  end
  namespace :customer do
    resources :requests, only: [:index, :new, :create, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
