class EventsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event), notice: "#{@event.name} was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
    @message = Message.new
  end

  def filter
    # o filtro é uma página onde são mostrados todos os resultados dos eventos
    # filtrados por alguns elementos
  # confirmar o elementos, mas pode ser data, periodo, categoria, e por distância da localização
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :event_date, :period)
  end
end
