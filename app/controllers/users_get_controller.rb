# frozen_string_literal: true

# UsersGetController is a controller class for getting user list API
class UsersGetController < ApplicationController
  before_action :setup_usecase

  def invoke
    collection = @usecase.execute(offset: params[:offset], limit: params[:limit], order: params[:order],
                                  direction: params[:direction])
    render json: UsersResponse.create_from_dto(collection:)
  end

  private

  def setup_usecase
    @usecase = UsersGetUsecase.new
  end
end
