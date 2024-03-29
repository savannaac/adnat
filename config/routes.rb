Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "application#home"

  resources :organizations do
    resources :users do
      get "join"
      get "leave"
    end
  end

  resources :users do
    resources :shifts
  end
end
