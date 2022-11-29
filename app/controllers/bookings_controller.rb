class BookingsController < ApplicationController

skip_before_action :authenticate_user!, only: :index
  def new
    @Training = Training.find(params[:training_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @training = Training.find(params[:food_id])
    @booking.user = current_user
    @booking.food = @food
    authorize @booking
    if @booking.save
      flash[:notice] = "Successfully created booking."
      redirect_to trainings_path
    else
      render :new
    end

  end

  def destroy
    @booking = Booking.find(params[:booking_params])
    @booking.destroy
    authorize @booking
    flash[:success] = "Your training booking was successfully deleted."
    redirect_to bookings_url
  end

  def validate
    authorize @booking
  end


  def show
    @booking = Booking.find(params[:booking_params])
    authorize @booking
  end

  def index
    skip_policy_scope
    @bookings = Booking.all
    authorize @bookings
  end

  def update
    @booking = Booking.edit(params[:booking_params])
    authorize @booking
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user: @user)
    authorize @bookings
    @trainings = Training.where(user: @user)
  end

  def bag
    @user = current_user
    @bookings = Booking.where(user: @user)
    authorize @bookings
  end

  def approve
    @booking = Booking.find_by_id(params[:id])
     @booking.update(state: "approved")
     if @booking.state == "approved"
       flash[:success] = "Booking successfully approved"
       redirect_to bookings_path
     else
       flash[:error] = "Booking not approved"
       redirect_to bookings_path
     end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end