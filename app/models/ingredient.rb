class Ingredient < ApplicationRecord
  belongs_to :cocktail
  # has_many :cocktails, through: :amounts
  validates :name, uniqueness: :true, presence: :true
end
