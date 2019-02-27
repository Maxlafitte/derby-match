class Team < ApplicationRecord
  belongs_to :league
  belongs_to :user, optional: true
  has_many :requests
  has_many :scores
  has_many :games, through: :requests

  validates :name, presence: true
  validates :ranking, presence: true, uniqueness: true
  validates :league, presence: true

  def method_unavailable_dates
    games.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
