class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def sub_email
  end

  def sub_internet
  end

end
