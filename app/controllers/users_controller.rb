class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(uid: params[:uid])
  end
end
