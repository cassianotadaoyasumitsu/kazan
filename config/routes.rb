Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users #, skip: :registration

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :requests,only: [ :index, :show, :new, :create,:edit,:update ]
  end

  resources :companies do
    resources :users,only: [ :index,:show ]
    resources :requests,only: [ :index, :edit,:update ]
  end

  resources :teams do
    resources :users,only: [ :index,:show ]
    resources :requests,only: [ :index, :edit,:update ]
  end
end
