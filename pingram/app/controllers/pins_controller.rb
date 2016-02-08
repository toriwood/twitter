class PinsController < ApplicationController
	before_action :find_pin, only:[:show, :edit, :update, :destroy]
	def index
		@pins = Pin.all.order("created_at DESC")
	end

# new action creates a new instance of the class
	def new
		@pin = Pin.new
		@pin.user = current_user

		@boards = Board.all
	end
# create action passes parameters to the new instance of the class and then saves it to the database
	def create
		@pin = Pin.new(pin_params)
		@pin.user = current_user
		
		if @pin.save
			redirect_to @pin
		end
	end

	def edit
		@boards = Board.all
	end

	def update
		if @pin.update(pin_params)
			redirect_to @pin
		else
			render 'edit'
		end
	end

	def destroy
		@pin.destroy
		redirect_to root_path
	end

	def show
		
	end

	private

	def pin_params
		params.require(:pin).permit(:title, :description, :image, :board_id)
	end

	def find_pin
		@pin = Pin.find(params[:id])		
	end
end

