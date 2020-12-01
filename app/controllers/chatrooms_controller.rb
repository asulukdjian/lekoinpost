class ChatroomsController < ApplicationController
   def show
    @chatroom = Chatroom.find(params[:id])
    @garden = @chatroom.appointment.garden
    @message = Message.new
    authorize @chatroom
   end
end
