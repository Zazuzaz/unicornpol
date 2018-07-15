class MerchantprofileController < ApplicationController
	def index
		@merchantprofile = Merchantprofile.all
	end

	def show
		@merchantprofile = Merchantprofile.find(params[:id])
	end	

	def new
		@merchantprofile = Merchantprofile.new
	end

	def create
		@merchantprofile = Merchantprofile.new(merchantprofile_params)
 		
 		if @merchantprofile.save
  			redirect_to @merchantprofile
  		else
  			render 'new'
  		end
	end

	def update
    @merchantprofile = Merchantprofile.find(params[:id])
 
    if @merchantprofile.update(merchantprofile_params)
      redirect_to @merchantprofile
    else
      render 'edit'
    end
  end
 
  def destroy
    @merchantprofile = Merchantprofile.find(params[:id])
    @merchantprofile.destroy
 
    redirect_to merchantprofiles_path
  end

	private
		  def merchantprofile_params
		    params.require(:merchantprofile).permit(:name, :email)
		  end
end
