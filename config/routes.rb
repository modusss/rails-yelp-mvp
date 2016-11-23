Rails.application.routes.draw do

  namespace :admin do
    resources :restaurants
  end

  resources :restaurants, only: [:index, :new, :create, :show] do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :reviews, only: [:new, :create]
  end
end
