class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid data."}
    end
  end

  def sign_in
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid data."}
    end
  end

  private

  def user_params
    params.permit(:username, :password, :email, :surname, :name, :patronymic, :birthday, :sex)
  end
end
