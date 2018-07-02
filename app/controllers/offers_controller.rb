class OffersController < ApplicationController

  def new
    Product.find(params["product_id"])
    @offer = Offer.new({product_id: params["product_id"]})
  end
  def create
    #puts params
    Offer.create!(offer_params.merge({customer: Customer.first}))
  end

  private
    def offer_params
      params.require(:offer).permit(:title, :description, :suggested_price, :status, :product_id)
    end
end

#TODOS:

#obsłużyć błedy w create
#zwalidować, nie dać wejść na offer new jeśli product nie istnieje
