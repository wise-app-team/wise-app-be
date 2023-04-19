class Api::V1::SessionsController < ApplicationController

  def create
    user = User.new.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      render json: UserSerializer.new(user), status: :ok
    else user.nil?
      render json: {error: "ERROR: Invalid email or password"}, status: 400
    end
  end
end