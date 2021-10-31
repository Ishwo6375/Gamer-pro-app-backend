class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :password, :reviews
end
