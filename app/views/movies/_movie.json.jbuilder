json.extract! movie, :id, :movie_id, :title, :cast, :crew, :created_at, :updated_at
json.url movie_url(movie, format: :json)
