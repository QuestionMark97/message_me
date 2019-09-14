class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to Message Now, #{@user.username}"
			redirect_to root_path
		else
			redirect_to signup_path
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end

end