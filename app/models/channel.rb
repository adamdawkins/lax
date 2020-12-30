# frozen_string_literal: true

class Channel < ApplicationRecord
  has_many :messages

  after_create_commit { broadcast_append_to "channels" }

  validates :name, presence: true
end
