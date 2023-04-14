class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json:{success: "User successfully created."}, status: :created

    else 
      render json:{error: "ERROR: User not created"}, status: :bad_request
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :birthday, :phone_number, :street_address, :city, :state, :zip_code)
  end
end