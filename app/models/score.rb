class Score < ApplicationRecord
  belongs_to :game
  belongs_to :team

  validates :game_id, presence: true
  validates :team_id, presence: true
  validates :at_home, presence: true
  validates :value, presence: true
end
