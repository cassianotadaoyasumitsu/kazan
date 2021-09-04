Rails.application.routes.draw do
  namespace :employees_backoffice do
    get 'pages/home'
  end
  namespace :tantoshas_backoffice do
    get 'pages/home'
  end
  namespace :users_backoffice do
    get 'pages/home'
  end
  devise_for :employees
  devise_for :tantoshas
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
