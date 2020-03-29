class Api::V1::MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def create
    message = Message.create(message_params)
    render json: message
  end

  private

  def message_params
    params.require(:message).permit(:author, :content)
  end
end
