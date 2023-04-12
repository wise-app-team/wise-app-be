require 'rails_helper'

RSpec.describe Drug, type: :model do 
	describe 'validations' do
		it { should validate_presence_of :name }
		it { should validate_presence_of :synonym }
	end

	describe 'class methods' do
		it '.search_by_name' do
			ty = create(:drug, name: 'Tylenol')
			as = create(:drug, name: 'Aspirin')
			viag = create(:drug, name: 'Viagra')

			expect(Drug.search_by_name('ty')).to eq([ty])
		end
	end
end