require 'rails_helper'

RSpec.describe Drug, type: :model do
  describe 'validations' do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:rxcui) }
  end
  
  describe 'relationships' do
    it { should have_many(:users) }
    it { should have_many(:drug_users) }
  end
end