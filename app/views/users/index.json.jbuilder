json.array!(@users) do |user|
  json.extract! user, :name, :password, :image_url
  json.url user_url(user, format: :json)
end
