Rails.application.routes.draw do
  resources :works
  resources :employees
  resources :providers
  resources :tools
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
