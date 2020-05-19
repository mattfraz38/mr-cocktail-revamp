class Ingredient < ApplicationRecord
  validates :name, uniqueness: :true, presence: :true
  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
