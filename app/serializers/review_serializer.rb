class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :movie_id, :content, :user_username
end
