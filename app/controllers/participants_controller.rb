class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    @event = Event.find(params[:event_id])
    @user = 
  end
end
