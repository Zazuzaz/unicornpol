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

# CO jeśli nie przejdą walidacje w create
  def create
    @merchantprofile = Merchantprofile.find(params[:id])
    product = Product.create!(product_params)
    redirect_to(product_path(product))
  end

  def edit
    @product = Product.find(params[:id])
  end


# Co jeśli nie przejdą walidacje w update
  def update
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
    def product_params
      params.require(:product).permit(:name, :description, :suggested_price, merchantprofile_id:)
    end

end


