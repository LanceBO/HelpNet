class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def new
    @issue = Issue.find(params[:ticket_id, :solution, :status, :user_id])
    @ticket.user = current_user
    @ticket.save


  end

  def create
    @ticket = Ticket.new(ticket_params)
    @helper = User.where(helper: true, helper_status: true)
    @ticket.user = current_user
    @ticket.helper = @helper
    api = Whereby::Api.new
    api.create_meeting(end_date:Time.now+1.day)
    redirect_to ticket_path(@ticket)
  end

  def show
    @ticket = Ticket.find(params[:id])
    @ticket.user = current_user

    #liste des helpers qui va générer update (voir cours ce matin)
  end

  def update
  end

private

  def ticket_params
    params.require(:ticket).permit(:status, :url, :user_id, :category)
  end

end
