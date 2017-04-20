class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_param)
    @user.event = @event
    @user.joining = @joining
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
  end

  def show
    @user = User.find(user_param)
  end

  private

  def user_param
    params.require(:user).permit(:id, :name)
  end
end
