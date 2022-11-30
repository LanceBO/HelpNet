class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    session[:issue_params] ||= {}
    @issue = Issue.new(session[:issue_params])
    @issue.current_step = session[:issue_step]
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(params[:issue])
    @issue.current_step = session[:issue_step]
    if @issue.valid?
      if params[:back_button]
        @issue.previous_step
      elsif @issue.last_step?
        @issue.save if @issue.all_valid?
      else
        @issue.next_step
      end
      session[:issue_step] = @issue.current_step
    end
    if @issue.new_record?
      render 'new'
    else
      session[:issue_step] = session[:issue_params] = nil
      flash[:notice] = "Issue saved."
      redirect_to @issue
    end
    render 'new'
  end

  private

  def issue_params
    params.require(:issue).permit(:category, :subcategory, :subsubcategory)
  end

end
