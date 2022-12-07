class TrainingsController < ApplicationController
  def index
    @user = current_user
    @trainings = Training.all
    @markers = @trainings.geocoded.map do |training|
      {
        lat: training.latitude,
        lng: training.longitude
      }
    end
  end

  def show
    @training = Training.find(params[:id])
    @booking = Booking.new
    @markers = [{
      lat: @training.latitude,
      lng: @training.longitude}]
  end

end
