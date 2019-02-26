class Team < ApplicationRecord
  belongs_to :league
  belongs_to :user
  has_many :requests
  has_many :scores

  validates :name, presence: true
  validates :ranking, presence: true
  validates :location, presence: true
  validates :league_id, presence: true

  validates :ranking, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
