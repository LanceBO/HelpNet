class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
   @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    @issue.save
  end

  private

  def issue_params
    params.require(:issue).permit(:subsubcategory)
  end

end
