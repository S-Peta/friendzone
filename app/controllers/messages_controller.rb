class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    @message.user = current_user

    if @message.save
      broadcast_message
    else
      render "events/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def broadcast_message
    # Utilize o Turbo Streams para enviar a mensagem para os clientes
    turbo_stream.append(
      @event,
      target: "messages",
      position: "beforeend",
      partial: "messages/message",
      locals: { message: @message }
    )
  end
end
