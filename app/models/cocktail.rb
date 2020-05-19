class Cocktail < ApplicationRecord
  validates :name, uniqueness: :true, presence: :true
  has_many :cocktail_ingredients
  has_many :ingredients, through: :cocktail_ingredients
end
