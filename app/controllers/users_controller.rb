class UsersController < ApplicationController
	def index
	end

	def new
		@user= User.new
	end

	def create
		new_user= params.require(:user).permit(:name, :email, :password, :password_confirmation)
		@user=User.new(new_user)
		p @user
		if @user.save
			flash[:success] = "Welcome to Easy Giving!"
			sign_in @user
			redirect_to new_donation_path
		else
			flash[:error]= "Invalid User Info"
			render 'new'
		end
	end

	def show
	    @user = User.find(params[:id])
	end

end
