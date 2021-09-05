Rails.application.routes.draw do
  namespace :employees_backoffice do
    get 'employees/index'
  end
  namespace :tantoshas_backoffice do
    get 'tantoshas/index'
  end
  namespace :users_backoffice do
    get 'users/index'
  end
  namespace :site do
    get 'pages/home'
  end
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

  root to: 'site/pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
