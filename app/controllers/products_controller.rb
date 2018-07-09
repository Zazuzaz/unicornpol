class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  # def make_offer
  #   @product = Product.find(params[:id])
  #   @offer = Offer.new(
  #     product: @product, 
  #     customer_id: 1, 
  #     suggested_price: 999, 
  #     description: '', title: '')

  #   if request.post? and @offer.save
  #       redirect_to products_path
  #     else
  #       render 'make_offer'
  #     end
  # end

  def create
    product_params = params["product"].permit("name", "description")
    product = Product.create(product_params)
    redirect_to(product_path(product))
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product_params = params["product"].permit("name", "description", "suggested_price")
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to(product_path(product))
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to(products_path(@product))
  end

end


