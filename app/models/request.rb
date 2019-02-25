class Request < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :messages
  belongs_to :game

  validates :team_id, presence: true
  validates :user_id, presence: true
  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :at_home, presence: true
end
