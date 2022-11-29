class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user

  end

  def show
    @ticket = Ticket.find(params[:id])
    @ticket.user = current_user


  end


private

  def ticket_params
    params.require(:ticket).permit(:title, :description, :user_id)
  end

end
