class MynewofferController < ApplicationController
  def index
  end

  def new
  	@mynewoffer = Offer.new(product_id: params["product_id"])
  end

  def create
  	# puts params
  	Offer.create(offer_params)


  # 	  @article = Article.new(article_params)
 
  # @article.save
  # redirect_to @article


  end	


  private
  def offer_params
    params.require(:offer).permit(:suggested_price, :customer_id)
  end

end
