class OfferController < ApplicationController
	def index
		@offer = Offer.all
	end

	def show
		@offer = Offer.find(params[:id])
	end	

# Czy widok new wyświetli błędy walidacji?
	def new
		@offer = Offer.new
	end

	def create
		@product = Product.find(params[:product_id])
		@offer = Offer.new(offer_params)
  	redirect_to (product_path(@product))
	end

	def update
    @offer = Offer.find(params[:id])
 
    if @offer.update(offer_params)
      redirect_to @offer
    else
      render 'edit'
    end
  end
 
  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path
  end

	private
	  def offer_params
	    params.require(:offer).permit(:description, :title, :status, :suggested_price, :product_id, :customer_id)
	  end
end
