class EventsController < ApplicationController
  # before_action :authenticate_user!, only: [ :chat ]

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
    @participant = Participant.new
  end

  def chat
    @event = Event.find(params[:event_id])
    @message = Message.new
    @participant = @event.participants
  end

  def filter
    @events = Event.all
    # usar ajax em cada filtro ?

    if params[:category].present?
      @events = @events.where(category: params[:category])
    end

    if params[:event_date].present?
      start_date, end_date = params[:event_date].split('to').map { |date| Date.parse(date)}

      @events = @events.where(event_date: start_date..end_date)
    end

    if params[:period].present?
      @events = @events.where(period: params[:period])
    end

    if params[:name].present?
      @events = @events.where(name: params[:name])

      # PGSearch com ilike
    end

    if params[:location].present?
      @events = @events.near(params[:location], (params[:distance].present? ? params[:distance] : 10), unit: :km)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :event_date, :period, :category)
  end

  # def authenticate_user!
  #   unless user_signed_in?
  #     redirect_to new_user_session_path, alert: 'You need to sign in to access this page.'
  #   end
  # end
end
