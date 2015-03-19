class ArticleSerializer < ActiveModel::Serializer
  #cached
  embed :ids
end