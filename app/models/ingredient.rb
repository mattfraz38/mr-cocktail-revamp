class Ingredient < ApplicationRecord
  validates :name, uniqueness: :true, presence: :true
  has_many :cocktails_ingredients
  has_many :cocktails, through: :cocktails_ingredients
end
