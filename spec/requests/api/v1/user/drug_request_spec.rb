require 'rails_helper'

RSpec.describe 'UserDrugs', type: :request do
  describe 'POST /api/v1/users/:id/drugs' do
    let(:valid_attributes) do
      {
        user_drug: {
          user_id: 1,
          drug_id: 1,
					dose1: Time.now,
					dose2: Time.now+1.hour,
					dose3: Time.now+2.hours,
					prn: false,
					text: 'Take this drug'
        }
      }
    end

    context "when the request is valid" do
      before { post "/api/v1/users/1/drugs", params: valid_attributes } 
      
      it "creates a new userdrug" do
        expect(response).to have_http_status(:created)
        expect(response.body).to match(/User-Drug relation successfully created/)

      end
    end

    context "when the request is invalid" do
      before { post "/api/v1/users/1/drugs", params: { drug: { name: "" } } }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: Drug not created/)
      end
    end
  end
end