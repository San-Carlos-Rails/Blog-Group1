class UsersController < ApplicationController
	before_action :logged_in?, only: [:index, :edit, :update]
	def index
		@users = User.page params[:page]
	end
	def show
		@user = User.find(params[:id])
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user
			flash[:success] = "Welcome to the Sample App!"
			 redirect_to @user
		else
			render 'new'
		end
	end
	def destroy
		log_out
		redirect_to root_url
	end


	private

	def user_params
		params.require(:user).permit(:name, :email, :password,
			:password_confirmation)
	end
end
