class OfferController < ApplicationController
	def index
		@offer = offer.all
	end

	def show
		@offer = offer.find(params[:id])
	end	

	def new
		@offer = offer.new
	end

	def create
		@offer = offer.new(offer_params)
 		
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
