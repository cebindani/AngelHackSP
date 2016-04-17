json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :data_init, :date_end, :order, :objetivo_id
  json.url task_url(task, format: :json)
end
