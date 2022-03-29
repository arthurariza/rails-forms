class UsersController < ApplicationController
  # before_action :get_user, only: [:edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_users_path
    else
      render :new
    end
  end

  def edit
    @user = get_user
  end

  def update
    @user = get_user

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def get_user
    User.find_by_id(params[:id])
  end
end
