RSpec.describe "Drugs", type: :request do
  describe "POST /api/v1/drugs" do
    let(:valid_attributes) do
      {
        drug: {
          rxcui: "1234567890",
          name: "Test Drug",
          synonym: "Test Synonym"
        }
      }
    end

    context "when the request is valid" do
      before { post "/api/v1/drugs", params: valid_attributes }

      it "creates a new drug" do
        expect(response).to have_http_status(:created)
        expect(response.body).to match(/Drug successfully created/)

        expect(Drug.all).to_not be_empty
        expect(Drug.all.count).to eq(1)
      end
    end

    context "when the request is invalid" do
      before { post "/api/v1/drugs", params: { drug: { name: "" } } }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: Drug not created/)
      end
    end
  end
end