# frozen_string_literal: true

require 'rails_helper'

describe 'Drugs API' do
  context 'when a drug exists' do
    describe 'GET /drugs' do
      it 'returns a list of drugs from a search parameter' do
        ty = Drug.new(name: 'Tylenol', synonym: 'Acetaminophen')
        as = Drug.new(name: 'Aspirin', synonym: 'Acetylsalicylic acid')
        viag = Drug.new(name: 'Viagra', synonym: 'Sildenafil')

        get '/api/v1/drugs/find_all?name=tyle'

        expect(response).to be_successful

        drugs = JSON.parse(response.body, symbolize_names: true)

        expect(drugs[:data].size).to eq(1)

        drugs[:data].each do |drug|
          expect(drug.keys).to eq(%i[id attributes])
          expect(drug[:attributes].keys).to eq(%i[name synonym])
          expect(drug[:attributes][:name]).to be_a(String)
          expect(drug[:attributes][:synonym]).to be_a(String)
          expect(drug[:attributes][:name]).to eq(ty.name)
          expect(drug[:attributes][:synonym]).to eq(ty.synonym)
        end
      end
    end

    context 'when a drug doesnt exist' do
      describe 'GET /drugs' do
        it 'returns an error if no drugs found' do
          as = create(:drug, name: 'Aspirin')
          viag = create(:drug, name: 'Viagra')

          get '/api/v1/drugs/find_all?name=ty'

          expect(response).to_not be_successful

          drugs = JSON.parse(response.body, symbolize_names: true)

          expect(drugs[:error]).to eq('No drugs found')
        end
      end
    end
  end
end
