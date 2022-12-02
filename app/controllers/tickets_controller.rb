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
    @ticket = Ticket.new
    @helper = User.where(helper: true, helper_status: true).sample
    @ticket.user = current_user
    # @ticket.helper = @helper
    @ticket.save
    redirect_to ticket_path(@ticket)
  end

  def show
    @ticket = Ticket.find(params[:id])
    @ticket.user = current_user
    url = "https://api.whereby.dev/v1/meetings"
    header = {"Authorization": "Bearer #{ENV['WHEREBY_API_KEY']}", "Content-Type": "application/json"}
    body = {"endDate": "#{Time.now + 1.day}"}
    RestClient.post(url, body, header) { |response, request, result|
    JSON.parse(response.body)
    }


    #liste des helpers qui va générer update (voir cours ce matin)
  end

  def update
  end

private

  def ticket_params
    params.require(:ticket).permit(:user_id)
  end

end
