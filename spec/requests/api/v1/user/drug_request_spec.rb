require 'rails_helper'

RSpec.describe 'UserDrugs', type: :request do
  describe 'POST /api/v1/users/:id/drugs' do
    let(:user) { create(:user) }
    let(:drug) { create(:drug) }
    let(:user_drug) { create(:user_drug, user: user, drug: drug) }

    context "when the request is valid" do
      before { post "/api/v1/users/#{user.id}/drugs", params: { user_drug: user_drug.attributes } }
      
      it "creates a new userdrug" do
        expect(response).to have_http_status(:created)
        expect(response.body).to match(/User-Drug relation successfully created/)

      end
    end

    context "when the request is invalid" do
      before { post "/api/v1/users/#{user.id}/drugs", params: { drug: { name: "" } } }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: Drug not created/)
      end
    end
  end
end