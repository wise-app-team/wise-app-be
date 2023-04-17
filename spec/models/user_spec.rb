require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip_code) }

    it { should have_secure_password }
    
    describe 'Google OAuth validations' do
      it { should validate_presence_of :google_id }
      it { should validate_presence_of :google_token }
      it { should validate_presence_of :email }
      it { should validate_presence_of :name }
      
      it { should validate_uniqueness_of(:google_id) }
      it { should validate_uniqueness_of(:email) }
    end
  end


  describe 'relationships' do
    it { should have_many(:drugs) }
    it { should have_many(:user_drugs) }
  end
end