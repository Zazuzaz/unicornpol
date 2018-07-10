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

  def create
    @product = Product.new(allowed_params)

    if @product.save
      redirect_to(products_path)
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    # product_params = params["product"].permit("name", "description", "suggested_price")
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to(product_path(product))
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to(products_path(@product))
  end

  private
    def allowed_params
      params.require(:product).permit(:name, :description, :suggested_price)
    end  

end


