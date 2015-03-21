class UsersController < ApplicationController
  
  def new
  	@user = User.new						#Adding an @user variable to the new action.
  end

  def show
  @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    
    if @user.save
    	flash[:success] = "Welcome to the Sample App!"
    	redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
