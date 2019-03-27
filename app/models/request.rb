class Request < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_one :game

  validates :team_id, presence: true
  validates :user_id, presence: true
  validates :status, presence: true
  validates :start_date, presence: true

  scope :accepted, -> { where(status: "accepted") }
end
