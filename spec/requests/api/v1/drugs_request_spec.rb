require 'rails_helper'

describe 'Drugs API' do
	context 'when a drug exists' do
		describe 'GET /drugs' do
			it 'returns a list of drugs from a search parameter' do
				ty = create(:drug, name: 'Tylenol')
				as = create(:drug, name: 'Aspirin')
				viag = create(:drug, name: 'Viagra')

				get '/api/v1/drugs/find_all?name=ty'

				expect(response).to be_successful

				drugs = JSON.parse(response.body, symbolize_names: true)
				
				expect(drugs[:data].size).to eq(1)


				drugs[:data].each do |drug|
					expect(drug.keys).to eq([:id, :attributes])
					expect(drug[:attributes].keys).to eq([:name, :synonym])
					expect(drug[:attributes][:name]).to be_a(String)
					expect(drug[:attributes][:synonym]).to be_a(String)
					expect(drug[:attributes][:name]).to eq(ty.name)
					expect(drug[:attributes][:synonym]).to eq(ty.synonym)
				end
			end
		end
	end
end