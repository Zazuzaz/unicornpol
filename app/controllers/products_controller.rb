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
    product = Product.create!(product_params)

    if product.save
      redirect_to(product_path(product))
    else
      render 'new'
    end
  end

#Dodać przycisk 'edit' w view
  def edit
    @product = Product.find(params[:id])
  end


# Co jeśli nie przejdą walidacje w update
  def update
    product = Product.find(params[:id])
    product.update(product_params)
    
    if product.update(product_params)
      redirect_to(product_path(product))
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to(products_path(@product))
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :suggested_price, :merchantprofile_id)
    end

end


