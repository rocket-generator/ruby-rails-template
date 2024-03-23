# frozen_string_literal: true

class UserRepository
  def initialize(db = User)
    @db = db
  end

  def find_by_id(id:)
    @db.find(id)
  end

  def list(offset: 0, limit: 10, order: 'created_at', direction: 'asc')
    safe_order_columns = %w[created_at updated_at id]
    safe_directions = %w[asc desc]

    order = 'created_at' unless safe_order_columns.include?(order)
    direction = 'asc' unless safe_directions.include?(direction)

    @db.order(Arel.sql("#{order} #{direction}")).offset(offset).limit(limit)
  end

  def count
    @db.count
  end

  def list_all
    @db.all
  end

  def create(params)
    @db.create(params)
  end

  def update(id:, params:)
    user = @db.find(id)
    user.update(params)
  end

  def delete(id:)
    user = @db.find(id)
    user.destroy
  end
end
