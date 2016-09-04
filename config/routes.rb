Rails.application.routes.draw do
  devise_for :users
  resources :products
  root to: "products#index"
  resource :cart, only: [:show] do 
  	post "add", path: "add/:id"
  	get :checkout
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
