json.array!(@states) do |state|
  json.extract! state, :id, :name, :capital, :population
  json.url state_url(state, format: :json)
end
