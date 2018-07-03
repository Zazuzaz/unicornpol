class OffersController < ApplicationController

  def new
    # the following line of code uses method .find on class Product, searches in all the records of the model
    # looking for the product_id that is stored in params. Returns an error if not found
    # we use this to make sure we won't store in the db an offer for a product that doesn't exist
    Product.find(params["product_id"])
    # the product_id is passed to Offer.new using query string `?product_id=x`
    # then it's read from params (params is a hash) and assigned to the product_id cell of the instance of class Offer
    @offer = Offer.new({product_id: params["product_id"]})
  end
  def create
    # we create a new record in the model Offer, assigning to the respective columns the values stored in offer_params
    # these are passed from the fields in the offer_new view, which are labelled offer_* in html
    # so we basically tell rails to take all the values from the fields labelled offer that are in params and assign them to the
    # columns labelled with the same name in the new instance of Offer class
    # as we don't have stored anywhere the id of the customer we use a workaround, hardcoding the first customer of the label as the only one
    # using the method .merge, a method for hashes, and the method .first
    # in the parameters customer = customer_id
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
