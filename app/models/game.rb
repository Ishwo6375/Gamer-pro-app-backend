class Game < ApplicationRecord
has_many :reviews, dependent: :destroy
has_many :favoritelists, dependent: :destroy
belongs_to :genre
has_many :like_dislikes
has_many :users, through: :reviews 

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image, presence: true
  validates :video_url, presence: true
end
