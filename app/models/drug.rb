class Drug < ApplicationRecord
	validates :name, presence: true
	validates :synonym, presence: true
end
