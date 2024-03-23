# frozen_string_literal: true

# CollectionDto is a data transfer object for collection model
class User < ApplicationRecord
  self.primary_key = :id
  self.implicit_order_column = :created_at
end
