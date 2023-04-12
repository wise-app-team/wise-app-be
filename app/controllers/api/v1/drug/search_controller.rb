class Api::V1::Drug::SearchController < ApplicationController
	def find_all
		drugs = Drug.all

		if drugs.empty?
			render json: { error: 'No drugs found' }, status: 404
		else
			render json: DrugSerializer.format_drugs(drugs)
		end
	end
end