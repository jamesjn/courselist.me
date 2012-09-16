class HomeController < ApplicationController
  helper_method :start_date, :start_date
  def index
    @courses = Course.all
  end

  private

  def start_date date
    if date.blank?
     "TBD" 
    else
      Date.parse(date).to_s
    end
  end
end
