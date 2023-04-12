class Drug < ApplicationRecord
	# belongs_to :user
	validates :name, presence: true
	validates :synonym, presence: true
end
