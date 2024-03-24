# frozen_string_literal: true

require 'test_helper'

class UsersGetControllerTest < ActionDispatch::IntegrationTest
  test 'should get users' do
    get users_url
    assert_response :success
  end
end
