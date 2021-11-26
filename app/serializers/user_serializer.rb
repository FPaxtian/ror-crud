class UserSerializer < ActiveModel::Serializer
  attributes :id, :users_name, :email, :password, :type_users
end
