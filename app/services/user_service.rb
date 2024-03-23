# frozen_string_literal: true

# UserService is a service class that is used to interact with the user repository.
class UserService
  def initialize(repository = UserRepository.new)
    @repository = repository
  end

  def find(id)
    @repository.find_by_id(id:)
  end

  def get(offset: 0, limit: 10, order: 'created_at', direction: 'asc')
    models = @repository.list(offset:, limit:, order:, direction:)
    result = []
    models.each do |model|
      result << UserDto.create_from_model(user_model: model)
    end

    result
  end

  def count
    @repository.count
  end

  def create(params)
    @repository.create(params)
  end

  def update(id:, params:)
    @repository.update(id:, params:)
  end

  def delete(id)
    @repository.delete(id:)
  end
end
