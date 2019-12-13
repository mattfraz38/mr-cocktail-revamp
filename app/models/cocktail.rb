class Cocktail < ApplicationRecord
  has_many :cocktail_ingredients
  has_many :ingredients, through: :cocktail_ingredients
  validates :name, uniqueness: :true, presence: :true
end
