class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  # def create
  #   @event = Event.new(params[:id])

  #   if @event.save
  #     redirect_to event_path(@event)
  #   else
  #     render form
  #   end

  # end

  # def show
  #   @event = Event.find(params[:id])
  # end

  # def delete

  # end
end
