Rails.application.routes.draw do
  resources :products
  root to: "products#index"
  resource :cart, only: [:show] do 
  	post "add", path: "add/:id"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
