class Message < ApplicationRecord
  belongs_to :request
  belongs_to :user

  validates :content, presence: true
end
