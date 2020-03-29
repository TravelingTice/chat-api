class Api::V1::MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def create
    message = Message.create(content: message_params[:content], author: message_params[:author], channel_id: message_params[:channel_id])
    render json: message
  end

  private

  def message_params
    params.require(:message).permit(:content, :author, :channel_id)
  end
end
