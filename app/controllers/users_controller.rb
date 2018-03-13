class UsersController < ApplicationController 
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User has successfully been created."
      redirect_to sign_in_path
    else
      flash[:warning] = @user.errors.full_messages.first
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :location, :email, :password)
  end
end