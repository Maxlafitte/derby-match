class Game < ApplicationRecord
  belongs_to :request
  has_many :scores

  validates :request_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :score_diff, presence: true
end
