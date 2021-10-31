class GameSerializer < ActiveModel::Serializer
 attributes :id, :title, :description, :likes, :dislikes, :image, :video_url, :rating, :liked, :disliked, :genre_id, :reviews
end
