class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    @user.event = @event
    @user.joining = @joining
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_param
    params.require(:user).permit(:id)
  end
end
