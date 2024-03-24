# frozen_string_literal: true

# User is a model class for users
class User < ApplicationRecord
  self.primary_key = :id
  self.implicit_order_column = :created_at
end
