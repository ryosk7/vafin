class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_param)
    @event.user = @user
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
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

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def event_param
    params.require(:event).permit(:user_id, :title, :address, :start_time, :end_time, :detail, :admin_id)
  end
end
