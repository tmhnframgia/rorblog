class UsersController < ApplicationController

	def show
		if params[:id].nil?
			@user = current_user
		else
			@user = User.find(params[:id])
		end
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome, let's start blogging :3"
      redirect_to @user
    else
    	render 'new'
    end
  end

  def new
  	@user = User.new
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password,
  		:password_confirmation, :avatar_url)
  end
  
end
