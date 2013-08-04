json.array!(@communities) do |community|
  json.extract! community, :name, :description, :public, :invite_status
  json.url community_url(community, format: :json)
end
