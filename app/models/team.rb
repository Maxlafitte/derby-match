class Team < ApplicationRecord
  belongs_to :league
  belongs_to :user, optional: true
  has_many :requests
  has_many :scores

  validates :name, presence: true
  validates :ranking, presence: true, uniqueness: true
  validates :location, presence: true
  validates :league, presence: true
end
