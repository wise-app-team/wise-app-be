class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: UserSerializer.new(@user), status: :created

    else 
      render json:{error: "ERROR: User not created"}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    if @user.save
      render json: UserSerializer.new(@user), status: :ok

    else 
      render json:{error: "ERROR: Unable to edit user"}, status: :bad_request
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.exists?
      @user.destroy
    else
      render json:{error: "ERROR: User not found"}, status: :bad_request
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :birthday, :phone_number, :street_address, :city, :state, :zip_code)
  end
end