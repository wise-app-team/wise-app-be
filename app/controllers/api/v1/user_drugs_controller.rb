class Api::V1::UserDrugsController < ApplicationController
  def create
    # require 'pry'; binding.pry
    @user_drug = UserDrug.new(user_drug_params)
    if @user_drug.save
		  render json: UserSerializer.new(@user_drug.user), status: :created
		else
      render json: {error: "ERROR: User drug not created"}, status: :bad_request
    end
  end

  def update
    @user_drug = UserDrug.find(params[:id])

    @user_drug.update(user_drug_params)
    if @user_drug.save
      render json: {success: "User-Drug relation successfully updated"}, status: :ok
      # The below code is for the actual seriualized JSON!
      # render json: UserDrugSerializer.new(@user_drug), status: :ok
    else 
      render json:{error: "ERROR: Unable to edit user-drug"}, status: :bad_request
    end
  end

  def destroy
    if UserDrug.exists?(params[:id])
      @user_drug = UserDrug.find(params[:id])
      @user_drug.destroy
    else
      render json:{error: "ERROR: User_drug not found"}, status: :bad_request
    end   
  end

	private
	def user_drug_params
		# params.require(:user_drug).permit(:user_id, :drug_id, :dose1, :dose2, :dose3, :prn, :notes)
		params.permit(:user_id, :drug_id, :dose1, :dose2, :dose3, :prn, :notes)
	end
end