class Team < ApplicationRecord
  belongs_to :league
  belongs_to :user
  has_many :requests
  has_many :scores

  validates :name, presence: true
  validates :ranking, presence: true, uniqueness: true
  validates :location, presence: true
  validates :league_id, presence: true
  validates :user_id, presence: true
  mount_uploader :photo, PhotoUploader
end
