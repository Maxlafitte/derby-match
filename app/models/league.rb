class League < ApplicationRecord
  has_many :teams

  validates :name, presence: true, uniqueness: true
  validates :logo, presence: true
  validates :city, presence: true
  validates :country, presence:true
end
