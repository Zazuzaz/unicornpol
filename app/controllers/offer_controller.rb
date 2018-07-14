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
		@product = Product.find(params[:id])
	end

	def create
		@offer = Offer.new(offer_params)
 		
 		if @offer.save
  			redirect_to @offer
  		else
  			render 'new'
  		end
	end

	private
	  def offer_params
	    params.require(:offer).permit(:suggested_price, :product_id, :customer_id)
	  end
end
