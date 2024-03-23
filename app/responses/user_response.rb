# frozen_string_literal: true

# UserResponse is a response object for user model
class UserResponse < Data.define(:email, :password)
  def self.create_from_dto(dto:)
    new(email: dto.email, password: dto.password)
  end
end
