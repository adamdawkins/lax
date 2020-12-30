# frozen_string_literal: true

class Channel < ApplicationRecord
  validates :name, presence: true

  after_create_commit { broadcast_append_to "channels" }
end
