class Api::V1::Drug::SearchController < ApplicationController
	def find_all
		drugs = Drug.search_by_name(params[:name])
		render json: DrugSerializer.format_drugs(drugs)
	end
end