class PetitionsController < ApplicationController

	def create
		@petition = Petition.build(params[:petition])
		if @petition.save
			flash[:success] = "Thanks for joining the boycott!"
			redirect_to root_path
		else
			flash[:error] = "Something went wrong..."
			redirect_to root_path
		end
	end
	
end
