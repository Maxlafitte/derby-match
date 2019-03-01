class Game < ApplicationRecord
  belongs_to :request
  has_many :scores

  validates :request_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def dates_range
    (start_date..end_date).to_a
  end
end
