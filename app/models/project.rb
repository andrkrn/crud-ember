class Project
  include MongoMapper::Document

  key :name, String
  key :description, Text

end