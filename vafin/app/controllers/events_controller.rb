class EventsController < ApplicationController
  def index
    @events = Event.all
    @users = User.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_param)
    # @event.users = @users
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
  end

  def match_time
    @event = Event.find(params[:start_time])
  end

  def admin_list
    @events = Event.where(user_id: @user)
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event.update(event_param)
    redirect_to event_admin_list_path
  end

  def destroy
    @event.update(event_param)
    redirect_to event_admin_list_path
  end



  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_event
    @studio = Event.find(params[:id])
  end

  def event_param
    params.require(:event).permit(:title, :address, :start_time, :end_time, :detail)
  end
end
