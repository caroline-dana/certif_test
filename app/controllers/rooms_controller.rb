class RoomsController < ApplicationController

  def index
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = @hotel.rooms
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new(room: @room)
  end

end
