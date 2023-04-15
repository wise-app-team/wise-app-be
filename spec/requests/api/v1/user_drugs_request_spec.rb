require 'rails_helper'

RSpec.describe 'UserDrugs', type: :request do
  describe 'POST /api/v1/users/:id/drugs' do
    let(:user) { User.create!(
                              name: 'Test User', 
                              email: 'test@email.com', 
                              phone_number: '215-534-4444', 
                              street_address: 'blah blah blah',
                              city: 'Corpus Christi',
                              state: 'CO',
                              zip_code: '99999',
                              password: 'yes',
                              password_confirmation: 'yes') }
    let(:drug) { Drug.create!(
                              name: 'Test Drug',
                              synonym: 'yes',
                              rxcui: '55559') }
    let(:valid_attributes) do
      {
        user_drug: {
          user_id: user.id,
          drug_id: drug.id,
					dose1: Time.now,
					dose2: Time.now+1.hour,
					dose3: Time.now+2.hours,
					prn: false,
					text: 'Take this drug'
        }
      }
    end

    context "when the request is valid" do
      before { post "/api/v1/user_drugs", params: valid_attributes } 
      
      it "creates a new userdrug" do
        expect(response).to have_http_status(:created)
        expect(response.body).to match(/User-Drug relation successfully created/)

      end
    end

    context "when the request is invalid" do
      before { post "/api/v1/user_drugs", params: { user_drug: { dose1: "" } } }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: User drug not created/)
      end
    end
  end
end