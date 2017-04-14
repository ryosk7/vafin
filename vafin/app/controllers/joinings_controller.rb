class JoiningsController < ApplicationController
  def index
    joinings = Joining.where(user: @user)
  end

  def new
    @joining = Joining.new
  end

  def create
    @joining = Joining.new(joining_param)
    @joining.event
    @joining.user = @user
    @joining.admin = @admin
    @joining.status = "Pending"
    if @booking.save
      redirect_to booking_path(booking)
    else
      render 'event/show'
    end
  end

  def show
    @joining = Joining.find(params[:id])
    @joinings = Joining.where(user: @user)
  end

  def destroy
    @joining = Joining.find(params[:id])
    @joining.destroy
    respond_to do |format|
      format.html { redirect_to joinings_path, notice: 'Join was successfully cancelled.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def joining_param
    params.require(:joining).permit(:member, :date)
  end
end
