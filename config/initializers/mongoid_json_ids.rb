# module BSON
#   class ObjectId
#     alias :to_json :to_s
#     alias :as_json :to_s
#   end
# end


module BSON
  class ObjectId

    def as_json(*args)
      to_s
    end

  end
end