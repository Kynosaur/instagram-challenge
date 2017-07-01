class UsersController < ApplicationController

  def show
    
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    redirect_to user
  end

end

def user_params
  params.require(:user).permit(:name, :password, :email)
end
