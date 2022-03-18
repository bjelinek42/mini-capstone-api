Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/supplier" => "supplier#index"

  get "/supplier/:id" => "supplier#show"

  post "/supplier" => "supplier#create"

  patch "/supplier/:id" => "supplier#update"

  delete "/supplier/:id" => "supplier#destroy"
end
