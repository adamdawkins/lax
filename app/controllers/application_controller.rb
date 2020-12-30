# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_channels

  private

    def set_channels
      @channels = Channel.all
    end
end
