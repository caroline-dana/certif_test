class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @booking.room = @room

    if @booking.save
      flash[:alert] = 'Booking saved'
      redirect_to booking_path(@booking)
    else
      flash[:alert] = 'Error'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival, :departure, :guest_number)
  end

end
