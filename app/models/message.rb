class Message < ApplicationRecord
  belongs_to :request
  belongs_to :user

  validates :content, presence: true
  validates :request_id, presence: true
  validates :user_id, presence: true
end
