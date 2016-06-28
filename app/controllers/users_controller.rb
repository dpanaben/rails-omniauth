class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user?, :except => [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
  if @user.update_attributes(secure_params)
    redirect_to @user
  else
    render :edit
  end
end

private

def secure_params
  params.require(:user).permit(:name, :email)
end


end
