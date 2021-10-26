class User < ApplicationRecord
has_secure_password
has_many :reviews, dependent: :destroy
has_many :favoritelists, dependent: :destroy
has_many :like_dislikes
has_many :games, through: :reviews
end
