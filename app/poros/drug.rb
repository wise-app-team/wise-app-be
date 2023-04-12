class Drug
  attr_accessor :name, 
                :synonym

  def initialize(drug)
    @name = drug[:name]
    @synonym = drug[:synonym]
  end

  # def self.search_by_name(name)
  #   where('name ILIKE ?', "%#{name}%")
  # end
end