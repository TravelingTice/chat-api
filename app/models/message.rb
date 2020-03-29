class Message < ApplicationRecord
  belongs_to :channel
  validates :author, :content, presence: true
end
