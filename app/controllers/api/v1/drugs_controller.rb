class Api::V1::DrugsController < ApplicationController
  def create
    @drug = Drug.new(drug_params)
    if @drug.save
      render json: DrugSerializer.new(@drug), status: :created
    else 
      render json:{error: "ERROR: Drug not created"}, status: :bad_request
    end
  end

	def find_by_rxcui
		@drug = Drug.find_by(rxcui: params[:rxcui])
		if @drug
			render json: DrugSerializer.new(@drug), status: :ok
		else
			render json: {error: "ERROR: Drug not found"}, status: :bad_request
		end
	end

  private
  def drug_params
    params.require(:drug).permit(:name, :rxcui, :synonym)
  end
end