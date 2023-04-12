require 'rails_helper'

describe 'Drugs API' do
	context 'when a drug exists' do
		describe 'GET /drugs' do
			it 'returns a list of drugs' do
				create_list(:drug, 3)

				get '/api/v1/drugs'

				expect(response).to be_successful

				drugs = JSON.parse(response.body, symbolize_names: true)
				
				expect(items[:data].size).to eq(3)


				drugs[:data].each do |drug|
					expect(drug.keys).to eq([:id, :name, :synonym])
				end
			end
		end
	end
end