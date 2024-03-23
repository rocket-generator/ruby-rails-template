# frozen_string_literal: true

# UsersGetUsecase is a usecase object for get users api endpoint
class UsersGetUsecase
  def initialize(user_service = UserService.new)
    @user_service = user_service
  end

  def execute(offset: 0, limit: 10, order: 'created_at', direction: 'asc')
    data = @user_service.get(offset:, limit:, order:, direction:)
    count = @user_service.count
    CollectionDto.create_from_array(data:, count:)
  end
end
