class Game < ApplicationRecord
has_many :reviews
has_many :favoritelists
belongs_to :genre
has_many :like_dislikes
has_many :users, through: :reviews 
end
