class User < ApplicationRecord
  searchkick
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
