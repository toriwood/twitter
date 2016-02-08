json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :genre_id
  json.url movie_url(movie, format: :json)
end
