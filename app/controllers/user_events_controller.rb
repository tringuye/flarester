class UserEventsController < ApplicationController

  def index
    @user_events = UserEvent.all
  end

  def show
    @user_event = UserEvent.find(params[:id])
    @event = @user_event.event
    @coordinator = @event.users.first
  end

  def create
    UserEvent.create(allowed_params)
    redirect_to events_path
  end

  def destroy
   UserEvent.find(params[:id]).destroy
    redirect_to events_path
  end

  private

  def allowed_params
    params.require(:user_event).permit(:user_id, :event_id)
  end

end
