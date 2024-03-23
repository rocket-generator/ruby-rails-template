# frozen_string_literal: true

# UserResponse is a response object for user model
UserResponse = Data.define(:email, :password) do
  def self.create_from_dto(dto:)
    new(email: dto.email, password: dto.password)
  end
end
