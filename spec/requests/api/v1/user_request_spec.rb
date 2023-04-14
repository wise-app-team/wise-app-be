RSpec.describe "Users", type: :request do
  describe "POST /api/v1/users" do
    let(:valid_attributes) do
      {
        user: {
          name: "Test User",
          email: "test@example.com",
          password: "password",
          password_confirmation: "password",
          birthday: Date.today,
          phone_number: "1234567890",
          street_address: "123 Main St",
          city: "Denver",
          state: 'NY',
          zip_code: '12345'
        }
      }
    end

    context "when the request is valid" do
      before { post "/api/v1/users", params: valid_attributes }
      
      it "creates a new user" do
        expect(response).to have_http_status(:created)
      end
    end

    context "when the request is invalid" do
      before { post "/api/v1/users", params: { user: { email: "invalid_email" } } }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: User not created/)
      end
    end
  end
end