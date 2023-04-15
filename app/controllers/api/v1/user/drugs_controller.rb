class Api::V1::User::DrugsController < ApplicationController
  def create
    require 'pry'; binding.pry
    
    @user_drug = UserDrug.new(user: @user, drug: @drug)
    if @user_drug.save
      render json: {success: "User-Drug relation successfully created"}, status: :ok
		else
      render json: {error: "ERROR: User drug not created"}, status: :bad_request
    end
  end

	private
	def user_drug_params
		params.require(:user_drug).permit(:user_id, :drug_id)
	end
end