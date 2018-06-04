class MerchantprofileController < ApplicationController
	def index
		@merchantprofile = Merchantprofile.all
	end

	def show
		@merchantprofile = Merchantprofile.find(params[:id])
	end	

	def new
	end

	def create
		@merchantprofile = Merchantprofile.new(merchantprofile_params)
 
		@merchantprofile.save
  		redirect_to @merchantprofile
	end

	private
		  def merchantprofile_params
		    params.require(:merchantprofile).permit(:name, :email)
		  end
end
