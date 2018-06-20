Rails.application.routes.draw do
  devise_for :users
  resources :pizzas
  resources :orders
  root "pizzas#index"

  delete "/order_pizzas/:order_id/:pizza_id", to: "order_pizzas#destroy"
  post "/order_pizzas/:order_id/:pizza_id", to: "order_pizzas#create"
  get "/", to: "pizzas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
