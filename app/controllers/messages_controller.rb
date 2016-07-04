class MessagesController < ApplicationController

  def index
    render json: Message.all.last(20)
  end

  def create
    message = Message.create!(user_id: params[:user_id], text: params[:text])

    render json: message
  end

end
