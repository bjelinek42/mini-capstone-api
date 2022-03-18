class SupplierController < ApplicationController
  def index
    supplier = Supplier.all
    render json: supplier
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier
  end

  def create
    supplier = Supplier.new({name: params[:name], phone_number: params[:phone_number], email: params[:email]})
    supplier.save
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name]
    supplier.phone_number = params[:phone_number]
    supplier.email = params[:email]
    supplier.save
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.delete
  end
end
