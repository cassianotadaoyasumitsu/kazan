Rails.application.routes.draw do
  devise_for :employees
  devise_for :tantoshas
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :users

  resource :tantoshas

  resource :employees

  resource :requests

end
