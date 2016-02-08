json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :cost, :duration
  json.url activity_url(activity, format: :json)
end
