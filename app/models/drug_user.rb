class DrugUser < ApplicationRecord
  belongs_to :user
  belongs_to :drug
end