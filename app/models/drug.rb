class Drug < ApplicationRecord
	validates :name, presence: true
	validates :synonym, presence: true

	def self.search_by_name(name)
		where('name ILIKE ?', "%#{name}%")
	end
end
