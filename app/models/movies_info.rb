class MoviesInfo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :movie_id, type: String
  field :title, type: String
  field :cast, type: String
  field :crew, type: String
end
