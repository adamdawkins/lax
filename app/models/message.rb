# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  broadcasts_to :channel

  validates :body, presence: true
end
