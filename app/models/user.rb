class User < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  searchkick
end
