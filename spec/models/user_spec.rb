# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid when system create an user model' do
    user = create(:user)
    expect(user).to be_valid
  end
end
