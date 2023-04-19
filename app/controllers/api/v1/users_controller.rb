class Api::V1::UsersController < ApplicationController
  def create
    # Check if user exists with this email
    if User.exists?(email: user_params[:email])
      render json: {error: "ERROR: User with this email already exists"}, status: :bad_request and return
    end

    # Create user
    @user = User.new(user_params)
    # If using OAuth, save without password
    if @user.from_oauth?
			@user.password = SecureRandom.hex(10)
			@user.password_confirmation = @user.password
			if @user.save!
        render json: UserSerializer.new(@user), status: :created
      else 
        render json:{error: "ERROR: User not created"}, status: 422
      end	
			# If using password, validate password and save with password
    elsif @user.save!
        render json: UserSerializer.new(@user), status: :created
		else
			render json: {error: "ERROR: User not created", messages: @user.errors.full_messages}, status: :bad_request
    end
  end

  # def login 
  #   binding.pry
  #   @user = User.find_by(params[:email])

  #   if @user.email == params[:email] && @user.authenticate(params[:password])
  #     render json: UserSerializer.new(@user), status: 200
  #   else
  #     render json: {error: "ERROR: Invalid email or password"}, status: 400
  #   end

  # end
	def show
		if User.exists?(email: user_params[:email])
      user = User.find_by(email: "#{params[:email]}.#{params[:format]}")
      render json: UserSerializer.new(user), status: :ok
			# @user = User.find_by(email: user_params[:email])
      # render json: UserSerializer.new(@user), status: :ok
    else
			render json: {error: "ERROR: User not found"}, status: :bad_request
		end
	end

  def update
    @user = User.find(params[:id])

    # If using OAuth, update without password
    if @user.from_oauth?
      @user.update(user_params.except(:password, :password_confirmation))
    # If using password, validate password and update with password
    else
      @user.update(user_params)
    end

    if @user.save
      render json: UserSerializer.new(@user), status: :ok
    else 
      render json:{error: "ERROR: Unable to edit user", messages: @user.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      @user.destroy
    else
      render json:{error: "ERROR: User not found"}, status: :bad_request
    end   
  end
  
  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation, :birthday, :phone_number, :street_address, :city, :state, :zip_code, :token, :provider)
  end
end