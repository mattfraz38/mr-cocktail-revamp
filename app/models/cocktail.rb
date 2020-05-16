class Cocktail < ApplicationRecord
  validates :name, uniqueness: :true, presence: :true
  has_many :cocktails_ingredients
  has_many :ingredients, through: :cocktails_ingredients
end
