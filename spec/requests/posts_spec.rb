require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "should return all products in an array" do
      Supplier.create!(name: 'foods', email: 'foods@gmail.com', phone_number: 87664638)
      Product.create!(name: 'pizza', price: 20, description: "cheese, crust, sauce", supplier_id: Supplier.last.id)
      Product.create!(name: 'Sanwhich', price: 10, description: "cheese, meat, sauce", supplier_id: Supplier.last.id)
      get "/products.json"
      products = JSON.parse(response.body)
      expect(products.length).to eq(2)
      expect(response).to have_http_status(200)
    end
  end
  describe "Get /products/:id" do
    it 'should return the product with the given id' do
      supplier = Supplier.create!(name: 'foods', email: 'foods@gmail.com', phone_number: 87664638)
      product = Product.create!(name: 'salmon', price: 50, description: 'delicious fish', supplier_id: supplier.id)
      get "/products/#{product.id}.json"
      product = JSON.parse(response.body)
      expect(product['name']).to eq('salmon')
      expect(product['price']).to eq('50.0')
      expect(product['description']).to eq('delicious fish')
    end
  end
  describe 'Post /products' do
    it 'should return the newly created product' do
      user = User.create!(name: 'ben', password: 'password', email: 'ben@gmail.com', admin: true)
      user.save!
      p user
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      supplier = Supplier.create!(name: 'foods', email: 'foods@gmail.com', phone_number: 87664638)
      p supplier.id
      post "/products.json", params: {
        name: 'new name',
        price: 22,
        description: "new description",
        supplier_id: supplier[:id]
      }, headers: {"Authorization"=> "Bearer #{jwt}"}
      product = JSON.parse(response.body)
      p product
      expect(product["name"]).to eq('new name')
    end
  end
end
