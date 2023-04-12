# # frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe Drug, type: :model do
#   describe 'validations' do
#     it { should validate_presence_of :name }
#     it { should validate_presence_of :synonym }
#   end

#   describe 'class methods' do
#     it '.search_by_name' do
#       ty = create(:drug, name: 'Tylenol')
#       as = create(:drug, name: 'Aspirin')
#       viag = create(:drug, name: 'Viagra')

#       expect(Drug.search_by_name('ty')).to eq([ty])
#       expect(Drug.search_by_name('ty')).to_not eq([as])
#     end

#     it 'returns an error if no drugs found' do
#       as = create(:drug, name: 'Aspirin')
#       viag = create(:drug, name: 'Viagra')

#       expect(Drug.search_by_name('ty')).to eq([])
#     end
#   end
# end
