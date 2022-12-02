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
    redirect_to ticket_path(@ticket)
  end

  def show
    @ticket = Ticket.find(params[:ticket_params])
    @ticket.user = current_user
    url = "https://api.whereby.dev/v1/meetings"
    header = {"Authorization": "Bearer #{ENV['WHEREBY_API_KEY']}", "Content-Type": "application/json"}
    body = {"endDate": "#{Time.now + 1.day}"}
    RestClient.post(url, body, header) { |response, request, result|
      p JSON.parse(response.body)
    }


    #liste des helpers qui va générer update (voir cours ce matin)
  end

  def update
  end

private

  def ticket_params
    params.require(:ticket).permit(:status, :url, :user_id, :category)
  end

end
