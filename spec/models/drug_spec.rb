require 'rails_helper'

RSpec.describe Drug, type: :model do
  describe 'validations' do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:rxcui) }
    it { should validate_uniqueness_of(:rxcui) }
  end
  
  describe 'relationships' do
    it { should have_and_belong_to_many(:users) }
  end
end