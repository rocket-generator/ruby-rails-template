# frozen_string_literal: true

# UsersResponse is a response object for user model collection
class UsersResponse < Data.define(:data, :count)
  def self.create_from_dto(collection:)
    result = []
    collection.data.each do |dto|
      result << UserResponse.create_from_dto(dto:)
    end

    new(data: result, count: collection.count)
  end
end
