class ChatroomsController < ApplicationController
   def show
    @chatroom = Chatroom.find(params[:id])
    @garden = @chatroom.appointment.garden
    @message = Message.new
    @show_chatroom_container = true
    authorize @chatroom
   end
end
