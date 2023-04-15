class Api::V1::UserDrugsController < ApplicationController
  def create
    @user_drug = UserDrug.new(user_drug_params)
    if @user_drug.save
      render json: {success: "User-Drug relation successfully created"}, status: :created
		else
      render json: {error: "ERROR: User drug not created"}, status: :bad_request
    end
  end

	private
	def user_drug_params
		params.require(:user_drug).permit(:user_id, :drug_id, :dose1, :dose2, :dose3, :prn, :notes)
	end
end