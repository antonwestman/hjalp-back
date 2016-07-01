class DaysController < ApplicationController

  #before_action :authenticate_user!

  def today
    render json: Day.today
  end

  def vote
    Day.today.vote(params[:user_id], params[:place_id])
    render head: :ok
  end

end
