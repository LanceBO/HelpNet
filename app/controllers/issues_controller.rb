require 'rest-client'
class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
    @solution = @issue.solution
    url = "https://api.whereby.dev/v1/meetings"
    header = {"Authorization": "Bearer #{ENV['WHEREBY_API_KEY']}", "Content-Type": "application/json"}
    body = {"endDate": "#{Time.now + 1.day}"}
    RestClient.post(url, body, header) { |response, request, result|
      p JSON.parse(response.body)
    }
  end

  def new
   @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    @issue.solution = Solution.find_by(problems: @issue.subsubcategory)
    @issue.save
    redirect_to issues_path(@issue)
  end

  private

  def issue_params
    params.require(:issue).permit(:subsubcategory)
  end

end
