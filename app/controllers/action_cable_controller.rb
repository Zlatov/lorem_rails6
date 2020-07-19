# ActionCable занятие 1
# Канал RoomChannel (app/channels/room_channel.rb, )
class ActionCableController < ApplicationController

  def show
    if request.post?
      room_id = params[:submit]
      return if room_id.blank?
      ActionCable.server.broadcast "room_channel_#{room_id}", message: 'hello'
    end
  end

  def room
    @room_id = params[:id]
  end
end
