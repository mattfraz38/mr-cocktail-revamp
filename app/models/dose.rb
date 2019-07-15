class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :name, :cocktail, :ingredient, presence: :true
end
