require 'rails_helper'

RSpec.describe DrugUser, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:drug) }
  end
end