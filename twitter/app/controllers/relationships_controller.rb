class RelationshipsController < ApplicationController
	def create
		@relationship = current_user.relationships.build(friends_id: params[:friends_id])

		if @relationship.save
			flash[:notice] = "Followed Successfully."
			redirect_to profile_path(current_user.id)
		else
			flash[:notice] = "Something went wrong."
			redirect_to root_path
		end
	end

	def destroy
		@relationship = current_user.relationships.find(params[:friends_id])

		@relationship.destroy
		redirect_to root_path		
	end

	private

	def relationship_params
		params.require(:relationship).permit(:user_id, :friends_id)
	end

end
