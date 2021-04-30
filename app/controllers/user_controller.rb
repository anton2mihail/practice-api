class UserController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def add_user_to_exam
  end
end
