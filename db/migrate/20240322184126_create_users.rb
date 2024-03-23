# frozen_string_literal: true

# CreateUsers is a migration class for creating users table
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
