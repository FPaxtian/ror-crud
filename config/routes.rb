Rails.application.routes.draw do
  root 'home#index'
  resources :works
  resources :employees
  resources :providers
  resources :tools
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :api_users
    end
  end
end
