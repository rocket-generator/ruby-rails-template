# frozen_string_literal: true

# UserDto is a data transfer object for user model
# that is used to transfer data between the controller and the service layer.
class UserDto < Data.define(:email, :password)

  def self.create_from_model(user_model:)
    new(email: user_model.email, password: user_model.password)
  end
end
