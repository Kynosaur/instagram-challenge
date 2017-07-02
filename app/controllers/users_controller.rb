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
      redirect_to user
    else
      redirect_to new_user_url
    end
  end

end

def user_params
  params.require(:user).permit(:name, :password, :email)
end
