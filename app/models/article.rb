class Article
  include Mongoid::Document
  include ActiveModel::SerializerSupport
  
  field :title, type: String
  field :body, type: String

  validates :title, :body, presence: true
end
