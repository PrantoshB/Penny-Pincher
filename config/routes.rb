Rails.application.routes.draw do
  resources :categories do 
    resources :payments
  end
  devise_for :users
  root to: 'home#index'
end
