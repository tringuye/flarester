class TimeIntervalsController < ApplicationController
  def index
    @time_now = Time.now
    @time_intervals = TimeInterval.all
  end 
end
