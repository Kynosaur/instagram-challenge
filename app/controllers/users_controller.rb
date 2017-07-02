class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.valid?
      log_in(user)
      redirect_to user
    else
      flash[:danger] = "Sorry, that doesn't look like an email address... please try again."
      redirect_to new_user_path
    end
  end

end

def user_params
  params.require(:user).permit(:name, :password, :email)
end
