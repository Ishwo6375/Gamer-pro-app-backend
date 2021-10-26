class User < ApplicationRecord
has_many :reviews
has_many :favoritelists
has_many :like_dislikes
has_many :games, through: :reviews
end
