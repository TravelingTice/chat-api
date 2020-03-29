class Api::V1::ChannelsController < ApplicationController
  def index
    channels = Channel.all
    render json: channels
  end

  def create
    channel = Channel.create(channel_params)
    render json: channel
  end

  def messages
    channel = Channel.find(params[:id])

    render json: Message.where(channel: channel)
  end

  private

  def channel_params
    params.require(:channel).permit(:name)
  end
end
