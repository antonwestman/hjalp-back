class DaysController < ApplicationController

  def today
    render json: Day.today
  end

end
