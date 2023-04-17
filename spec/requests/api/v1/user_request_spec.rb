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

				pretty = JSON.parse(response.body)
        expect(response).to have_http_status(:created)
				expect(pretty["data"]["attributes"]["name"]).to eq("Test User")
				expect(pretty["data"]["attributes"]["email"]).to eq("test@example.com")
				expect(pretty["data"]["attributes"]["birthday"]).to eq(Date.today.to_s)
				expect(pretty["data"]["attributes"]["phone_number"]).to eq("1234567890")
				expect(pretty["data"]["attributes"]["street_address"]).to eq("123 Main St")
				expect(pretty["data"]["attributes"]["city"]).to eq("Denver")
				expect(pretty["data"]["attributes"]["state"]).to eq("NY")
				expect(pretty["data"]["attributes"]["zip_code"]).to eq("12345")
      end
    end

    xcontext "when the request is invalid" do
      before { post "/api/v1/users", params: { user: { email: "" } } }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: User not created/)
      end
    end
  end

  describe "PATCH /api/v1/users" do
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
    let(:updated_attributes) do
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
          state: 'CO',
          zip_code: '12345'
        }
      }
    end

    context "when the request is valid" do
      
      it "Edit a user" do
				post "/api/v1/users", params: valid_attributes
				patch "/api/v1/users/#{User.last.id}", params: updated_attributes
        expect(response).to have_http_status(:ok)
				
				pretty = JSON.parse(response.body)

				expect(pretty["data"]["attributes"]["state"]).to_not eq("NY")
				expect(pretty["data"]["attributes"]["state"]).to eq("CO")
      end
    end

    context "when the request is invalid" do
			# before { post "/api/v1/users", params: valid_attributes }
      # before { patch "/api/v1/users/#{User.last.id}", params: { user: { email: "" } } }

      it "returns a validation failure message" do
				post "/api/v1/users", params: valid_attributes
				patch "/api/v1/users/#{User.last.id}", params: { user: { email: "" } } 
        expect(response.body).to match(/ERROR: Unable to edit user/)
      end
    end
  end

  describe "Destroy /api/v1/users" do
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
      
      it "deletes a user" do
				delete "/api/v1/users/#{User.last.id}"
        expect(response).to have_http_status(:no_content)
      end
    end

    context "when the request is invalid" do
			before { post "/api/v1/users", params: valid_attributes }
      before { delete "/api/v1/users/9999999" }

      it "returns a validation failure message" do
        expect(response.body).to match(/ERROR: User not found/)
      end
    end
  end
end