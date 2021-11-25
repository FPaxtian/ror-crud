Rails.application.routes.draw do
  namespace 'api' do
    resources :api_users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
