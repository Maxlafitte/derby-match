class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :team
  has_many :requests
  has_many :messages

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :derby_name, presence: true
  validates :photo, presence: true
end
