class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_path(@event), notice: "#{@event.name} was successfully created"
    else
      render :new, status: :unprocessable_entity
    end

  end

  # def show
  #   @event = Event.find(params[:id])
  # end

  # def delete

  # end

  private

  def event_params
    params.require(:event).permit(:name, :location, :event_date, :period )
  end
end
