class Api::V1::User::DrugsController < ApplicationController
  def create
    require 'pry'; binding.pry
    @user = User.find(params[:user_id])
    @drug = Drug.find(params[:drug_id])
    @user_drug = UserDrug.new(user: @user, drug: @drug)
    require 'pry'; binding.pry
    if @user_drug.save
      render json: UserDrugSerializer.new(@user_drug), status: :created
    else
      render json: {error: "ERROR: User drug not created"}, status: :bad_request
    end
  end
end