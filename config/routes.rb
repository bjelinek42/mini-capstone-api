Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "supplier#index"

  get "/suppliers/:id" => "supplier#show"

  post "/suppliers" => "supplier#create"

  patch "/suppliers/:id" => "supplier#update"

  delete "/suppliers/:id" => "supplier#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"

  post "/orders" => "orders#create"

  get "carted_products" => "carted_products#index"

  post "/carted_products" => "carted_products#create"

  delete "/carted_products/:id" => "carted_products#destroy"
end
