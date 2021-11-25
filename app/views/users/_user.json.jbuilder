json.extract! user, :id, :users_name, :email, :password, :type_users, :created_at, :updated_at
json.url user_url(user, format: :json)
