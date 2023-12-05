class ParticipantsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @participant = Participant.new
    @participant.user = current_user
    @participant.event = @event

    @participant.save
    redirect_to event_chat_path(@event) #fix path to filter or index
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to events_path, status: :see_other
  end

  def index
    @events = current_user.event_participants # eventos que sou participante
  end
end
