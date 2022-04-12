class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def index
    @products = Product.all
    render template: "products/index"
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description])
    if @product.save
      render template: "products/show"
    else
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:input_name] || @product.name
    @product.price = params[:input_price] || @product.price
    @product.description = params[:input_description] || @product.description
    @product.supplier_id = params[:input_supplier_id] || @product.supplier_id
    if @product.save
      render template: "products/show"
    else
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
  end


end
