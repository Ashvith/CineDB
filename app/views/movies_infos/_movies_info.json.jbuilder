json.extract! movies_info, :id, :movie_id, :title, :cast, :crew, :created_at, :updated_at
json.url movies_info_url(movies_info, format: :json)
