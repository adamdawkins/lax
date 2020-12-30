# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :set_channel, only: %i[ new create ]

  def new
    @message = @channel.messages.new
  end

  def create
    @message = @channel.messages.create!(message_params.merge(user_id: current_user.id))

    respond_to do |format|
      format.html { redirect_to @channel }
    end
  end

  private

    def set_channel
      @channel = Channel.find(params[:channel_id])
    end

    def message_params
      params.require(:message).permit(:body)
    end
end

