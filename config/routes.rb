Rails.application.routes.draw do
  root 'apartments#index'
  devise_for :users

  resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
