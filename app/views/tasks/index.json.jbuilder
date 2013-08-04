json.array!(@tasks) do |task|
  json.extract! task, :title, :description, :status, :priority, :private
  json.url task_url(task, format: :json)
end
