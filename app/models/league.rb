class League < ApplicationRecord

  geocoded_by :address
  has_many :teams

  validates :name, presence: true, uniqueness: true
  validates :logo, presence: true
  validates :city, presence: true
  validates :country, presence: true

  def address
    "#{city}, #{country}"
  end
end
