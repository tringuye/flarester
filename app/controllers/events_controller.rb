class EventsController < ApplicationController
  
  def index
    @events = Event.all.select do |x|
      x.event_time.to_time > Time.now && x.city == @user.city
    end
    @scheduled_user_events = Event.all.select do |x|
      (x.event_time.to_time > Time.now && x.city == @user.city) && (x.users.include?(@user))
    end
    @unattended_events = @events.count - @scheduled_user_events.count
  end

  def show
    @event = Event.find(params[:id])
    @user_event = UserEvent.new
    @coordinator = @event.users.first
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(allowed_params)
    @event.event_time = @event.time_interval.to_event_time(Time.now)
    @event.city = @user.city
    @event.save
    UserEvent.create(user: @user, event: @event)
    redirect_to events_path
  end

  private

  def allowed_params
    params.require(:event).permit(:location_id, :category_id, :time_interval_id, :name, :notes)
  end

end
